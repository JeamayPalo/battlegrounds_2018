require_relative './environment'

#CLI controller
class Battlegrounds2018::CLI

    def self.call
      puts "Hello"
      list_states
      list_state_candidates
      goodbye
    end

    def self.list_states
       puts "Here are the Battleground States for Midterms 2018 and their incumbents."
       Battlegrounds2018::Scraper.scrape_states
    end

  def self.list_state_candidates
   input = nil
    while input != 'exit'
     puts "To find out your State's candidates, please enter the State number:"
     input = gets.strip
       puts "The candidates are:"
        #Battlegrounds2018::Scraper.scrape(Battlegrounds2018::State.battleground[input - 1])
     case input
         when '1'
           Battlegrounds2018::Scraper.scrape("Arizona")
         when '2'
           Battlegrounds2018::Scraper.scrape("Florida")
         when '3'
           Battlegrounds2018::Scraper.scrape("Indiana")
         when '4'
           Battlegrounds2018::Scraper.scrape("Maine")
         when '5'
           Battlegrounds2018::Scraper.scrape("Minnesota")
         when '6'
           Battlegrounds2018::Scraper.scrape("Missouri")
         when '7'
           Battlegrounds2018::Scraper.scrape("Montana")
         when '8'
           Battlegrounds2018::Scraper.scrape("Nevada")
         when '9'
           Battlegrounds2018::Scraper.scrape("North Dakota")
         when '10'
           Battlegrounds2018::Scraper.scrape("Ohio")
         when '11'
           Battlegrounds2018::Scraper.scrape("West Virginia")
       else
         puts "Invalid Input"
      end
    end
  end

 def self.goodbye
   puts "Vote Wisely!"
 end

end
