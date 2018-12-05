class Ramen::CLI
  
  def make_ramen_list
    ramen_array = Ramen::Scraper.scrape_page()
    Ramen::RamenShop.create_from_list(ramen_array)
  end
  
  def call
    make_ramen_list
    puts "Welcome to the top #{Ramen::RamenShop.all.count} must-try ramen shops in San Diego!"
    start
  end

  def start
    puts ""
    puts "There are #{Ramen::RamenShop.all.count} ramen restaurants. How many would you like to see?"
    input = gets.strip.to_i
    if input < 1 || input >Ramen::RamenShop.all.count
      puts "I didn't understand."
      start
    else
      ramen_list(input)
      details
    end
    
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
    puts "Would you like additional information about a restaurant? Enter the restaurant number or no/n to exit."
    input = gets.strip
    if input.to_i.between?(1,Ramen::RamenShop.all.count)
      restaurant = input.to_i
      ramen_shop_detail(restaurant)
    elsif input == "n" || input == "no" || input == "N"
      puts ""
      puts "Thank you! Goodbye!"
      exit
    else
      puts ""
      puts "Please enter a valid response (1-#{Ramen::RamenShop.all.count})."
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
  end
end
