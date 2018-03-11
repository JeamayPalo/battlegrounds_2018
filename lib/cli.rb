class Battlegrounds2018::CLI

    def call
       puts "Battleground States for Midterms 2018"
       list_states
       goodbye
     end

     def list_states
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

     def list_candidates
       puts "Please enter the state:"
     end

     def goodbye
       puts "Vote Wisely!"
     end

end

Battlegrounds_2018
