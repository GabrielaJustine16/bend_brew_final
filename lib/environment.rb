require_relative "../lib/bend_brew_final/version"
require_relative "../lib/bend_brew_final/cli"
require_relative "../lib/bend_brew_final/scraper"
require_relative "../lib/bend_brew_final/breweries"
require_relative "../lib/bend_brew_final/beers"

module BendBrewFinal
  class Error < StandardError; end
  # Your code goes here...
end

require 'nokogiri'
require 'open-uri'
require 'pry'
