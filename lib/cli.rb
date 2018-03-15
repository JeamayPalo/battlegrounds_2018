require 'pry'
require_relative './candidates'
require_relative './states'

#CLI controller
class CLI

    def menu
       puts "Battleground States for Midterms 2018"
       State.list_states
       goodbye
       binding.pry
    end

     def list_state_candidates
       puts "Please enter the state number (1-9):"
       input = gets.strip.to_i
       while input != 'exit'
         case input
         when '1'
           arizona_candidates
         when '2'
           florida_candidates
         when '3'
           indiana_candidates
         when '4'
           missouri_candidates
         when '5'
           montana_candidates
         when '6'
           nevada_candidates
         when '7'
           northdakota_candidates
         when '8'
           ohio_candidates
         when '9'
           westviriginia_candidates
         end
       end
    end

     def goodbye
       puts "Vote Wisely!"
     end

end
