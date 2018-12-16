class HashCooker
  def initialize(file_content)
    @file_content = file_content
  end

  def end_points
    @end_points = []
    @file_content.each_with_index {
      |line, index|
      @end_points.push index if line.include? "}.freeze" # or initiailize
    }
    @end_points
  end

  def get_modules
    @modules = []
    file_content = @file_content.clone
    @file_content.each {
      |line|
      @modules.push(line.split(" ").first) if (line.include?("= {") && line.index("@") == nil)
    }
    @modules
  end

  def get_elements
    @elements = []
    temp_elements = []
    file_content = @file_content.clone
    @file_content.each_with_index {
      |line, index|
      break if index > end_points.last
      temp_elements.push(deal_elements_line line) if line.include?(":")
      if (line.include? "}.freeze")
        @elements.push temp_elements
        temp_elements = []
      end
    }
    @elements
  end

  def deal_elements_line(line)
    line.chomp
      .chomp(",")
      .lstrip
      .split(": ")
  end
end
