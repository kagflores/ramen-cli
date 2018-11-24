class Ramen
  attr_accessor :name, :address, :phone_num, :website, :description
  @@all = []
  
  def initialize(ramen_spots)
    #call with return value of 'Scraper.scrape_page' as an argument
    ramen_spots.each{|key, value| self.send("#{key}=", value)}
    @@all << self
  end
  
  def self.find(id)
    self.all[id-1]
  end
  
  def self.all
    @@all
  end
end

#require_relative '../config/environment'