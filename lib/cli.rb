require 'pry'
require_relative './candidates'
require_relative './states'

#CLI controller
class CLI

    def list_states
       puts "Battleground States for Midterms 2018"
       State.scrape_states
       goodbye
    end

     def list_state_candidates
       puts "Please enter the state number (1-9):"
       input = gets.strip.to_i
       while input != 'exit'
         case input
         when '1'
           Candidate.scrape_arizona
         when '2'
           Candidate.scrape_florida
         when '3'
           Candidate.scrape_indiana
         when '4'
           Candidate.scrape_missouri
         when '5'
           Candidate.scrape_montana
         when '6'
           Candidate.scrape_nevada
         when '7'
           Candidate.scrape_northdakota
         when '8'
           Candidate.scrape_ohio
         when '9'
           Candidate.scrape_westviriginia
         end
       end
    end

     def goodbye
       puts "Vote Wisely!"
     end

end
