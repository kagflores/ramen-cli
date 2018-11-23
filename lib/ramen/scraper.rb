require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  #url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego"
  def self.scrape_page(url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego")
    ramen_list = Nokogiri::HTML(open(url))
    ramen_spots = []
    ramen_list.css(".c-mapstack__card").each do |ramen_shop|
      #binding.pry
      if ramen_shop.css(".c-mapstack__card-hed").css("h1").text != ""
        #binding.pry
        name_long = ramen_shop.css(".c-mapstack__card-hed").css("h1").text
        phone_num_long = ramen_shop.css(".c-mapstack__phone-url").css("a").text
        address_long = ramen_shop.css(".c-mapstack__address").text
        ramen_spots << {
          :name => name_long.slice(1..-1),
          :address => address_long.insert(-20, " "),
          :phone_num => phone_num_long.slice(0..13),
          :description => ramen_shop.css(".c-entry-content").css("p").text,
          :website => ramen_shop.css(".c-mapstack__phone-url").css("a").last.attribute("href").text,
        }
      end
    end
    binding.pry
    #ramen_spots[:name] = ramen_list.css(".c-mapstack__card").css(".c-mapstack__card-hed").css("h1").text
    #binding.pry
    ramen_spots
    
  end
  
  def make_ramen_list
    #ramen_places = 
  end
  
end
#Scraper.scrape_page()
#Restaurant_name = ramens.css(".c-mapstack__card-hed").css("h1").text
#Restaurant_address = ramens.css(".c-mapstack__address").text
#_phone_num = ramens.css(".c-mapstack__phone-url").text
#_description = ramens.css(".c-entry-content").css("p").text
#_website = ramens.css(".c-mapstack__phone-url").css("a").attribute("target").value.....
#phone_num alternative = :website => ramen_shop.css(".c-mapstack__phone-url").css("a").last.attribute("href").text