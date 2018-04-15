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
       puts "Here are the Battleground States for Midterms 2018 and their incumbents."
       Scraper.scrape_states
    end

  def self.list_state_candidates
   input = nil
    while input != 'exit'
     puts "To find out your State's candidates, please enter the name of the State:"
     input = gets.strip
     puts "The candidates are:"
     case input
     when 'Arizona'
         Scraper.scrape("Arizona")
       when 'Florida'
         Scraper.scrape("Florida")
       when 'Indiana'
         Scraper.scrape("Indiana")
      #when 'Maine'
        #Scraper.scrape("Maine")
      #when 'Minnesota'
        #Scraper.scrape("Minnesota")
       when 'Missouri'
         Scraper.scrape("Missouri")
       when 'Montana'
         Scraper.scrape("Montana")
       when 'Nevada'
         Scraper.scrape("Nevada")
       when 'North Dakota'
         Scraper.scrape("North Dakota")
       when 'Ohio'
         Scraper.scrape("Ohio")
       when 'West Virginia'
         Scraper.scrape("West Virginia")
       else
         puts "Invalid Input"
      end
    end
  end

 def self.goodbye
   puts "Vote Wisely!"
 end

end
