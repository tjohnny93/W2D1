# PHASE 2
def convert_to_int(str)
  Integer(str)
  rescue ArgumentError
  raise "Unable to convert"
  return nil

end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    puts "I don't want that"
    raise StandardError 
    
  end
end

def feed_me_a_fruit
    puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue
    puts "I'm angry now, give me coffee!"
    if gets.chomp == "coffee"

      retry
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if yrs_known < 5
      raise "That's not enough years to be bestie"
    end
    if name.length <= 0
      raise "That is not a name!"
    end
    if fav_pastime.length <= 0
      raise "How dare you!?"
    end


    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


