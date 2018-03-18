require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './scraper'
require_relative './states'

#CLI controller
class CLI

    def self.list_states
       puts "Here are the Battleground States for Midterms 2018"
       Scraper.scrape_states
       goodbye
    end

     def self.list_state_candidates
       input = ""
       puts "Please enter the state number (1-9):"
       input = gets.strip.to_i
       while input != 'exit'
         case input
           when '1'
             Scraper.scrape_arizona
           when '2'
             Scraper.scrape_florida
           #when '3'
             #Scraper.scrape_indiana
           when '4'
             Scraper.scrape_missouri
           when '5'
             Scraper.scrape_montana
           when '6'
             Scraper.scrape_nevada
           when '7'
             Scraper.scrape_northdakota
           when '8'
             Scraper.scrape_ohio
           when '9'
             Scraper.scrape_westviriginia
           binding.pry
        end
      end
    end

     def goodbye
       puts "Vote Wisely!"
     end

end

#list_states
#list_state_candidates

#CLI.list_state_candidates
