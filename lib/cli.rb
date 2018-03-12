require_relative './lib/battlegrounds_2018/candidates'
require 'pry'

#CLI controller
class Battleground_Candidates2018::CLI

    def menu
       puts "Battleground States for Midterms 2018"
       list_states
       goodbye
    end

    def self.list_states
      puts "Here are the Battleground States for the Midterm Elections of 2018:
      1.) Arizona
      2.) Florida
      3.) Indiana
      4.) Missouri
      5.) Montana
      6.) Nevada
      7.) North Dakota
      8.) Ohio
      9.) West Virginia
      "
    end

     def self.list_state_candidates
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

Battleground_Candidates2018
