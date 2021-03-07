# Reading a Text File
#---------------------
# file_location = 'sample.txt'
# content = File.read(file_location)

# puts content

# Writing a Text File
#---------------------
file_location = 'sample.txt'
new_content = "New Content!"

File.open(file_location, 'a') {|file|
  file.write(new_content)
}
