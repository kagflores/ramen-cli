class Ramen::Scraper
  
  def self.scrape_page(url = "https://sandiego.eater.com/maps/best-japanese-ramen-noodle-restaurant-san-diego")
    ramen_list = Nokogiri::HTML(open(url))
    ramen_spots = []
    ramen_list.css(".c-mapstack__card").each do |ramen_shop|
      #binding.pry
      if ramen_shop.css(".c-mapstack__card-hed").css("h1").text != ""
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
    ramen_spots
  end
end