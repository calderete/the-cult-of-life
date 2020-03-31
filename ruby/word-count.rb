require 'pry'

def greeting
  puts "Which file to count:"
  file = gets.chomp
  count_words(file)
end

def count_words(file)
  proj_dir = Dir.pwd
  proj_dir.slice!(-4, 4)
  path_to_file = "#{proj_dir}#{file}"
  text = File.open(path_to_file).read
  count = text.split.count.to_s
  puts "Word count in file \'#{file}\':\n  #{count}"
end

greeting
