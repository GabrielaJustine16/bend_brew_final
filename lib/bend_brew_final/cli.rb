require "open-uri"
require "nokogiri"

class BendBrewFinal::CLI
    
    def start
        puts "Welcome to the Breweries of Bend , Oregon Gem\n"
        self.list_breweries
        self.menu

    end 

       def self.list_breweries
        puts "Listed are the wonderful breweries located in Bend, Oregon\n"
        #breweries = BendBrewFinal::Scraper
        breweries.each_with_index(1) do |brewery, index|
            puts "#{index}.#{brewery.name}-#{brewery.address}"        
         end 

       def self.menu
        puts "Select the number next to the brewey you want more information on."
        input=gets.strip.downcase
        

       end
end