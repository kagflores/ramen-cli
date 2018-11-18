require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  def get_page
    Nokogiri::HTML(open("https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego"))
  end
  
  
end