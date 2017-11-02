require 'colorize'
require 'pry'

puts "Hello, welcome to the Middle Letter Word Sorter"

def middle_letter_finder
  puts "Please enter a word that you'd like to find the middle letter of!"
  input = gets.strip.downcase

  if input[/\s/]
    puts "Hey, that looks like more than one word to me. \nJust write one word."
    middle_letter_finder

  elsif input.length <= 2
    puts "Really? You need the middle letters for that?"
    print "#{input.capitalize}".colorize(:yellow)
    print " is already the middle of "
    puts "#{input}!".colorize(:yellow)
    puts "Pick a better word."
    middle_letter_finder

  elsif input.length % 2 != 0
    size = input.length
    puts "This word is odd, cool, you'll get back one letter."
    print "Calculating...".colorize(:light_blue)
    array = input.chars.each_slice(1).map { |s| s.to_s }
    middle_letter = array[(size-1)/2][2]
    puts "done!".colorize(:green)
    print "The middle letter for "
    print "#{input}".colorize(:yellow)
    print " is: "
    print "#{middle_letter}".colorize(:yellow)
    puts ". Impossible task accomplished!"
    puts "Would you like to find more middle letters of words?"
    done = gets.strip.downcase
    if done == "yes"
      middle_letter_finder
    elsif done == "no" || done == "quit"
      print "Shutting down...".colorize(:red)
      puts "Goodbye"
      exit
    end


  else
    size = input.length
    puts "This word is even, ok, you'll get back two letters."
    print "Calculating...".colorize(:light_blue)
    array = input.chars.each_slice(1).map { |s| s.to_s }
    middle_letters = array[(size/2)-1][2] + array[size/2][2]
    puts "done!".colorize(:green)
    print "The middle letters for "
    print "#{input}".colorize(:yellow)
    print " are: "
    print "#{middle_letters}".colorize(:yellow)
    puts ". Impossible task accomplished!"
    puts "Would you like to find more middle letters of words?"
    done = gets.strip.downcase
    if done == "yes"
      middle_letter_finder
    elsif done == "no" || done == "quit"
      print "Shutting down...".colorize(:red)
      puts "Goodbye"
      exit
    end
  end

end

middle_letter_finder
