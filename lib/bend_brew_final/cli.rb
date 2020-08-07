require "open-uri"
require "nokogiri"


class CLI
    
    
    def start
        puts "Welcome to the Breweries of Bend , Oregon Gem ! \n"

        get_breweries
        list_breweries 
        
        
    end 

    
    def get_breweries
        Scraper.new.scrape_breweries
    end 

    def list_breweries
        puts "Listed are the wonderful breweries located in Bend, Oregon ! \n"
            
        Brewery.all.each do |brewery|
            puts "#{brewery.number}. #{brewery.name}-#{brewery.address}"
        end 

        menu 
        
    end 

    def  list_beers(brewery)

        if brewery.beers.length == 0
            Scraper.new.scrape_beers(brewery)
        
        else 
       
        end

            puts "Surprise! Here are the beers from #{brewery.name}:"
            
        brewery.beers.each.with_index(1) do |beer, i|
                
            
            puts "#{i}. #{beer.name.ljust(50)} #{beer.style.ljust(40)} Ratings: #{beer.ratings} Score: #{beer.score}"
        
            end
            
            exit_menu
    
    
    
        end 

    def exit_menu
        
        puts "Enter 'exit' to leave, or 'back' to view the brewery list."

                input=gets.strip.downcase

                case input 
            
                when "back" 
                list_breweries
                when "exit"

                puts "Sad to see you go. Come Back soon!"
                else 
                puts "Im sorry, I dont quite understand. Please try again."
                exit_menu
        end 
    
    end


    def menu
        puts "Enter the number next to the brewery youd like more information on!"

        input=gets.strip
        
        if input.to_i >= 1 && input.to_i <= Brewery.all.length

            list_beers(Brewery.find_brewery_by_number(input.to_i))

        else 
            puts "I dont understand . Have you had too many beers?  Please ty again . "
            
            menu 

        end 
    end


end