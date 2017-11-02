require 'colorize'

puts "Hello, welcome to the Middle Letter Word Sorter"

def sort_this_shit_out_dot_exe
  puts "Please enter a word that you'd like to find the middle letter of!"
  input = gets.strip.downcase
  array = []

  # TODO: figure out regex, put filter for multiple words
  # if !input.include? " "
  #   puts "Hey, thats more than one word. Please only put one word."
  # else
  #   puts input
  # end

  if input.length % 2 != 0
    size = input.length
    puts "This word is odd, cool, you'll get back one letter."
    print "Calculating..."
    array = input.chars.to_a.each_slice(1).to_a.map {|s| s.to_s }
    puts "done!"
    print "The middle letter for #{input} is: #{array[(size - 1)/2]}."
    puts " Impossible task accomplished!"

  else
    size = input.length
    puts "This word is even, ok, you'll get back two letters."
    print "Calculating..."

    puts "done!"
    print "The middles letters for #{input} are: blahblahblah"
  end

end

sort_this_shit_out_dot_exe
