require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  #url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego"
  def self.scrape_page(url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego")
    ramen_list = Nokogiri::HTML(open(url))
    ramen_spots = {}
    #ramen_list.css(".")
    
  end
  
end
Scraper.scrape_page(url)