#require "ramen/cli/version"
require_relative "../ramen/ramen.rb"
require_relative '../ramen/scraper.rb'

class CLI
  
  def make_ramen_list
    ramen_array = Scraper.scrape_page()
    Ramen.create_from_list(ramen_array)
  end
  
  def call
    make_ramen_list
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
    Ramen.all[0, number].each do |restaurant|
      description_short = restaurant.description.split("\n").first # includes whole description
      puts "#{restaurant.name} - #{description_short}"
    end
  end
  
  def ramen_shop_detail(user_num) #undefined local variable or method ramen
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

CLI.new.call