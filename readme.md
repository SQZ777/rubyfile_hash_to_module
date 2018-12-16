# What's this?
This is a file generator.
Generate the file what exist "hash" variables to module

### for example

this file has hash variables

```ruby
PAGE_OBJECT = {
    btn1: 'im btn1'
    btn2: 'im btn2'
    btn3: 'im btn3'
}.freeze
```

### Generate to

filename: page_object.rb
file content is

```ruby
module page_object
  def btn1
    'im btn1'
  end
  
  def btn2
    'im btn2'
  end

  def btn3
    'im btn3'
  end

end

```

## how to let it works?

excecute ruby command line

```command line
ruby main_cooker.rb "your_hash_file_name.rb"
```

### Then, you will get

./result/your_module_files.rb