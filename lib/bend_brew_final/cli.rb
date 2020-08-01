require "open-uri"
require "nokogiri"


class CLI
    
    #@@all=[]
    
    def start
        puts "Welcome to the Breweries of Bend , Oregon Gem ! \n"

        get_breweries
        list_breweries 
        
        #breweries= scrape breweries
        #breweries.each{|brewery| @@all << brewery}
       # self.list_breweries
        #self.menu
    end 

    #def self.all 
        #@@all
    #end 
    def get_breweries
        Scraper.new.scrape_breweries
    end 

    def self.list_breweries
        puts "Listed are the wonderful breweries located in Bend, Oregon \n"
        #breweries = BendBrewFinal::Scraper
        #all.each_with_index(1) do |brewery, index|
            #puts "#{index}.#{brewery.name}-#{brewery.address}"  
        #end      
        Brewery.all.each do |brewery|
            puts "#{brewery.number}. #{brewery.name}-#{brewery.address}"
        end 

        menu 
    end 



    def self.menu
        puts "Enter a number next to the brewery youd like more information on!"

        input=gets.strip
        #index=input.to_i-1
        #scrape web for more info 
        #beer advocate url is brewery.url
        #if index > 0 && index < @@all.size
        if input.to_i >= 1 && input.to_i <= Brewery.all.length

            list_beers(Brewery.find_brewery_by_num(input.to_i))

        else puts "I dont understand . Have you had too many beers?  Please ty again . "
            
            menu 

        end 
    end

end