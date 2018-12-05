class Ramen::RamenShop
  attr_accessor :name, :address, :phone_num, :website, :description
  @@all = []
  
  def initialize(ramen_spots)
    ramen_spots.each{|key, value| self.send("#{key}=", value)}
    @@all << self
  end
  
  def self.create_from_list(ramen_array)
    ramen_array.each do |shop|
      ramen = Ramen::RamenShop.new(shop)
    end
  end
  
  def self.find(id)
    self.all[id-1]
  end
  
  def self.all
    @@all
  end
end