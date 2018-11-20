require "ramen/cli/version"

class CLI
  def call
    Ramen.new.make_restaurants
    puts "Welcome to the top 13 must-try ramen shops in San Diego!"
    start
  end

  def start
    puts ""
    puts "What number restaurants would you like to see? 1-5 or 1-13?"
    input = gets.strip.to_i

    ramen_list(input)

    puts ""
    puts "Would you like additional information about a restaurant? Enter the restaurant number."
    input = gets.strip

    restaurant = Ramen.find(input.to_i)

    ramen_shop_detail(restaurant)

    puts ""
    puts "Would you like to see another restaurant? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Goodbye!"
      exit
    else
      puts ""
      puts "Please enter a valid response (y/n)."
      start
    end
  end
  
  def ramen_list(number)
    puts ""
    puts "------ Ramen Shops 1 - #{number+1} ------"
    puts ""
    Ramen.all[number-1, 10].each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{ramen.name} - #{ramen.description}"
    end
  end
  
  def ramen_shop_detail(user_num)
    puts ""
    puts "#{ramen.name}"
    puts ""
    puts "#{ramen.address}"
    puts "#{ramen.phone_num}"
    puts "#{ramen.website}"
    puts ""
    puts "#{ramen.description}"
    puts ""
  end
end
