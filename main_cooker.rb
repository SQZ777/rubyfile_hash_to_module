require_relative "./hash_cooker.rb"
require_relative "./file_cooker.rb"
filename = "./example_files/product_page.rb"

file_cooker = FileCooker.new
file_cooker.open_file filename
file_cooker.read_file
hash_cooker = HashCooker.new file_cooker.file_content
file_cooker.write_file(hash_cooker.get_modules, hash_cooker.get_elements)
