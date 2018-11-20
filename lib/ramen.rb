class Ramen
  attr_accessor :name, :address, :phone_num, :website, :description
  @@all = []
  
  def initialize
  end
  
  def self.all
    @@all
  end
end

require_relative '../config/environment'