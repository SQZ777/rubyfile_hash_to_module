class FileCooker
  attr_reader :file_content

  def open_file(filename)
    @file = File.open(File.expand_path(filename))
  end

  def read_file
    @file_content = []
    @file.each {
      |x|
      @file_content.push x
    }
    @file.close
  end

  def write_file(deal_modules, deal_elements)
    deal_modules.each_with_index {
      |m, i|
      f = File.new("result/#{m.downcase}.rb", "a+")
      file_content = "module #{m}\n"
      # f.write("module #{m}\n")
      deal_elements[i].each {
        |element|
        #element[0] = element name
        #element[1] = element path
        file_content += "  def #{element[0]}\n\t  #{element[1]}\n  end\n\n"
        p "#{element[0]}'ve wrote'"
        p "#{element[1]}'ve wrote'"
      }
      file_content += "end\n"
      f.write(file_content)
      f.close
    }
  end
end
