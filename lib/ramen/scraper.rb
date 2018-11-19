require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  #url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego"
  def self.scrape_page(url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego")
    ramen_list = Nokogiri::HTML(open(url))
    ramen_spots = {}
    #ramens = ramen_list.css(".c-mapstack__card")
    binding.pry
    
  end
  
end
Scraper.scrape_page()
#Restaurant_name = ramens.css(".c-mapstack__card-hed").css("h1").text
#Restaurant_address = ramens.css(".c-mapstack__address").text
#_phone_num = ramens.css(".c-mapstack__phone-url").text
#_description = ramens.css(".c-entry-content").css("p").text
#_website = ramens.css(".c-mapstack__phone-url").css("a").attribute("target").value.....