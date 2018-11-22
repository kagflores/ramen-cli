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
      ramen_spots << {
        :name => ramen_shop.css(".c-mapstack__card-hed").css("h1").text, #get rid of /n at beginning
        :address => ramen_shop.css(".c-mapstack__address").text, #separate into 2 lines
        :phone_num => ramen_shop.css(".c-mapstack__phone-url").css("a").text, #clarify text to pull number only
        :description => ramen_shop.css(".c-entry-content").css("p").text,
        :website => ramen_shop.css(".c-mapstack__phone-url").css("a").attribute("href").value, 
      }
    end
    binding.pry
    #ramen_spots[:name] = ramen_list.css(".c-mapstack__card").css(".c-mapstack__card-hed").css("h1").text
    #binding.pry
    ramen_spots
    
  end
  
end
Scraper.scrape_page()
#Restaurant_name = ramens.css(".c-mapstack__card-hed").css("h1").text
#Restaurant_address = ramens.css(".c-mapstack__address").text
#_phone_num = ramens.css(".c-mapstack__phone-url").text
#_description = ramens.css(".c-entry-content").css("p").text
#_website = ramens.css(".c-mapstack__phone-url").css("a").attribute("target").value.....