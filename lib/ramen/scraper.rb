require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  #url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego"
  def self.scrape_page(url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego")
    ramen_list = Nokogiri::HTML(open(url))
    ramen_spots = {}
    ramen_list.css(".c-mapstack__cards").each do |ramen_shop|
      #binding.pry
      ramen_spots = {
        :name => ramen_shop.css(".c-mapstack__card-hed").css("h1").text,
        :address => ramen_shop.css(".c-mapstack__address").text,
        :phone_num => ramen_shop.css(".c-mapstack__phone-url").text,
        :description => ramen_shop.css(".c-entry-content").css("p").text
        #:website => ramen_shop
      }
    end
    binding.pry
    ramen_spots
    
  end
  
end
Scraper.scrape_page()
#Restaurant_name = ramens.css(".c-mapstack__card-hed").css("h1").text
#Restaurant_address = ramens.css(".c-mapstack__address").text
#_phone_num = ramens.css(".c-mapstack__phone-url").text
#_description = ramens.css(".c-entry-content").css("p").text
#_website = ramens.css(".c-mapstack__phone-url").css("a").attribute("target").value.....