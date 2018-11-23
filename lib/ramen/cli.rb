#require "ramen/cli/version"
require_relative '..lib/ramen/ramen.rb'
require_relative '..lib/ramen/scraper.rb'

class CLI
  def call
    Ramen.new()
    puts "Welcome to the top 13 must-try ramen shops in San Diego!"
    start
  end

  def start
    puts ""
    puts "Would you like to see 5, 10, or all 13 ramen restaurants?"
    input = gets.strip.to_i

    ramen_list(input)

    puts ""
    puts "Would you like additional information about a restaurant? Enter the restaurant number."
    input = gets.strip

    restaurant = Ramen.find(input.to_i)

    ramen_shop_detail(restaurant) #is this calling the right thing?

    puts ""
    puts "Would you like to see another restaurant? (Y/N)"

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
    puts "------ Ramen Shops 1 - #{number} ------" 
    puts ""
    Ramen.all[0, number-1].each do |restaurant|
      description_short = ramen.description.split("\n").first
      puts "#{ramen.name} - #{description_short}"
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
