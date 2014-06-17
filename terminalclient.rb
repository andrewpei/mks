require_relative 'lib/pig/latin.rb'

class TerminalClient
  def start
    puts "Hello, I speak igpay atinlay!"
    puts "Type any english sentence to translate to Pig Latin:"
    keep_going = true

    while keep_going
      print ">> "
      userInput = gets.chomp
      puts Pig::Latin.translate(userInput)
    end

  end
end
