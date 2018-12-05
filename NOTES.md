##CLI.rb
#require "ramen/cli/version"
#require_relative '../ramen/ramen.rb'
#require_relative '../ramen/scraper.rb'
#require_relative '../config/environment.rb'

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
    
##Scraper.rb
#require 'open-uri'
#require 'nokogiri'
#require 'pry'

 #url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego"
     #ramen_spots[:name] = ramen_list.css(".c-mapstack__card").css(".c-mapstack__card-hed").css("h1").text
#Scraper.scrape_page()
#Restaurant_name = ramens.css(".c-mapstack__card-hed").css("h1").text
#Restaurant_address = ramens.css(".c-mapstack__address").text
#_phone_num = ramens.css(".c-mapstack__phone-url").text
#_description = ramens.css(".c-entry-content").css("p").text
#_website = ramens.css(".c-mapstack__phone-url").css("a").attribute("target").value.....
#phone_num alternative = :website => ramen_shop.css(".c-mapstack__phone-url").css("a").last.attribute("href").text