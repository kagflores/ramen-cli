#require "ramen/cli/version"
#require_relative '../ramen/ramen.rb'
#require_relative '../ramen/scraper.rb'
#require_relative '../config/environment.rb'

class Ramen::CLI
  
  def make_ramen_list
    ramen_array = Ramen::Scraper.scrape_page()
    Ramen::RamenShop.create_from_list(ramen_array)
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
    details
    
    #puts ""
    #puts "Would you like additional information about a restaurant? Enter the restaurant number."
    #input = gets.strip
    #if input.to_i.between?(1,13)
    #  restaurant = input.to_i
    #  ramen_shop_detail(restaurant)
    #else input == "n" || input == "no" || input == "N"
    #  puts ""
    #  puts "Thank you! Goodbye!"
    #  exit
    #end

    #restaurant = input.to_i

    #ramen_shop_detail(restaurant)

    puts ""
    puts "Would you like to see another restaurant? (Y/N)"

    input = gets.strip.downcase
    if input == "y" || input == "yes"
      start
    elsif input == "n" || input == "no"
      puts ""
      puts "Thank you! Goodbye!"
      exit
    else
      puts ""
      puts "Please enter a valid response (y/n)."
      start
    end
  end
  
  def details
    puts ""
    puts "Would you like additional information about a restaurant? Enter the restaurant number."
    input = gets.strip
    if input.to_i.between?(1,13)
      restaurant = input.to_i
      ramen_shop_detail(restaurant)
    elsif input == "n" || input == "no" || input == "N"
      puts ""
      puts "Thank you! Goodbye!"
      exit
    else
      puts ""
      puts "Please enter a valid response (1-13)."
      details
    end
  end
  
  def ramen_list(number)
    puts ""
    puts "------ Ramen Shops 1 - #{number} ------" 
    puts ""
    Ramen::RamenShop.all[0, number].each do |restaurant|
      description_short = restaurant.description.split(".").first.insert(-1,".")
      puts "#{restaurant.name} - #{description_short}"
      puts "--------------------------------"
    end
  end
  
  def ramen_shop_detail(user_num)
    restaurant = Ramen::RamenShop.all[user_num-1]
      puts ""
      puts "#{restaurant.name}"
      puts ""
      puts "#{restaurant.address}"
      puts "#{restaurant.phone_num}"
      puts "#{restaurant.website}"
      puts ""
      puts "#{restaurant.description}"
      puts ""
    #end
  end
end
