require "nokogiri"
require "open-uri"


class BendBrewFinal::Scraper
    doc = Nokogiri::HTML(open("https://www.beeradvocate.com/place/city/12/"))

end

#Nokogiri::HTML(open("https://www.beeradvocate.com/beer/profile/23066/"))
