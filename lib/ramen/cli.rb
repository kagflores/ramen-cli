require "ramen/cli/version"

class CLI
  def call
    WorldsBestRestaurants::Scraper.new.make_restaurants
    puts "Welcome to the 50 Best Restaurants in the World"
    start
  end

  def start
    puts ""
    puts "What number restaurants would you like to see? 1-5 or 1-13?"
    input = gets.strip.to_i

    print_restaurants(input)

    puts ""
    puts "What restaurant would you like more information on?"
    input = gets.strip

    restaurant = WorldsBestRestaurants::Restaurant.find(input.to_i)

    print_restaurant(restaurant)

    puts ""
    puts "Would you like to see another restaurant? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end
  end
end
