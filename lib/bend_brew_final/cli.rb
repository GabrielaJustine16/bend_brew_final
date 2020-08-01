require "open-uri"
require "nokogiri"


class BendBrewFinal::CLI
    
    @@all=[]
    
    def start
        puts "Welcome to the Breweries of Bend , Oregon Gem ! \n"

        binding.pry
        
        #breweries= scrape breweries
        breweries.each{|brewery| @@all << brewery}
        self.list_breweries
        self.menu

    end 

    def self.all 
        @@all
    end 

    def self.list_breweries
        puts "Listed are the wonderful breweries located in Bend, Oregon \n"
        #breweries = BendBrewFinal::Scraper
        all.each_with_index(1) do |brewery, index|
            puts "#{index}.#{brewery.name}-#{brewery.address}"  
        end      
    end 

    def self.menu
        puts "Select the number next to the brewey you want more information on."
        input=gets.strip
        index=input.to_i-1

        #scrape web for more info 
        #beer advocate url is brewery.url
        if index > 0 && index < @@all.size

        end 

        
    end

end