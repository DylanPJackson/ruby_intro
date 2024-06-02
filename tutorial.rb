class MegaGreeter
  attr_accessor :names

  # Create an object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list, so we're iterating
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join list elements with join
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  # Case where no names
  mg.say_hi
  mg.say_bye

  # Changing name to Zeke, so case of only one name
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change names to array, so case of multiple names
  mg.names = ["Douglas", "Fir", "Small", "Ant"]
  mg.say_hi
  mg.say_bye

  # Empty
  mg.names = nil
  mg.say_hi
  mg.say_bye
end
