require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  def self.
    ramen_list = Nokogiri::HTML(open("https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego"))
    ramen_spots = {}
    #ramen_list.css(".")
    
  end
  
end