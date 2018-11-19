require "ramen/cli/version"

class CLI
  def call
    WorldsBestRestaurants::Scraper.new.make_restaurants
    puts "Welcome to the top 13 must-try ramen shops in San Diego!"
    start
  end

  def start
    puts ""
    puts "What number restaurants would you like to see? 1-5 or 1-13?"
    input = gets.strip.to_i

    print_restaurants(input)

    puts ""
    puts "Would you like additional information about a restaurant? Enter the restaurant number."
    input = gets.strip

    restaurant = Ramen.find(input.to_i)

    print_restaurant(restaurant)

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
      puts "I don't understand that answer."
      start
    end
  end
end
