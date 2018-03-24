require_relative './environment'

#CLI controller
class CLI

    def self.call
      puts "Hello"
      list_states
      list_state_candidates
      goodbye
    end

    def self.list_states
       puts "Here are the Battleground States for Midterms 2018"
       Scraper.scrape_states
    end

  def self.list_state_candidates
   input = nil
    while input != 'exit'
     puts "To find out your State's candidates, please enter the State number (1-9):"
     input = gets.strip
     puts "The candidates are:"
     case input
       when '1'
         Scraper.scrape("Arizona")
       when '2'
         Scraper.scrape("Florida")
       when '3'
         Scraper.scrape("Indiana")
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
         Scraper.scrape_westvirginia
       else
         puts "Invalid Input"
      end
    end
  end

 def self.goodbye
   puts "Vote Wisely!"
 end

end
