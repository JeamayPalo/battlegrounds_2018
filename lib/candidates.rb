#require_relative './battlegrounds_2018'
require 'nokogiri'
require 'open-uri'
require 'pry'

class Candidate
  # Your code goes here...
    attr_accessor :party, :name, :status, :state

    def initialize (status = 'candidate')
      @name = name
      @party = party
      @status = status
      @state = state
    end

    def arizona_candidates
      arizona = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      arizona.css("#mw-content-text").css("ul")[8].text #Incumbent
      arizona.css("#mw-content-text").css("ul")[5].text #Democrats
      arizona.css("#mw-content-text").css("ul")[6].text #Republicans
      arizona.css("#mw-content-text").css("ul")[7].text #Independent
      arizona.css("#mw-content-text").css("ul")[9].text #Libertarian
    end

    def florida_candidates
      florida = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      florida.css("#mw-content-text").css("ul")[10].text  #Democrats
      florida.css("#mw-content-text").css("ul")[11].text  #Republicans
      florida.css("#mw-content-text").css("ul")[12].text  #Potential
      florida.css("#mw-content-text").css("ul")[13].text  #Libertarian
      florida.css("#mw-content-text").css("ul")[14].text  #Independents
    end

    def missouri_candidates
      missouri = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      missouri.css("#mw-content-text").css("ul")[31].text #Democrats
      missouri.css("#mw-content-text").css("ul")[32].text #Republicans
      missouri.css("#mw-content-text").css("ul")[33].text #Republican - Withdrew
      missouri.css("#mw-content-text").css("ul")[34].text #Independent
      missouri.css("#mw-content-text").css("ul")[35].text #Libertarian
    end

    def montana_candidates
      montana = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      montana.css("#mw-content-text").css("ul")[36].text  #Democrats
      montana.css("#mw-content-text").css("ul")[37].text  #Republicans
      montana.css("#mw-content-text").css("ul")[38].text  #Republicans - Withdrew
      montana.css("#mw-content-text").css("ul")[39].text  #Green Party
      montana.css("#mw-content-text").css("ul")[40].text  #Libertarian
      binding.pry
    end

    def nevada_candidates
      nevada = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      nevada.css("#mw-content-text").css("ul")[41].text #Democrats
      nevada.css("#mw-content-text").css("ul")[42].text #Democrat - withdrew
      nevada.css("#mw-content-text").css("ul")[43].text #Republicans
      binding.pry
    end

    def self.northdakota_candidates
      northdakota = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      northdakota.css("#mw-content-text").css("ul")[44].text #Democrats
      northdakota.css("#mw-content-text").css("ul")[45].text #Republican
      northdakota.css("#mw-content-text").css("ul")[46].text #Republicans - Withdrew
      binding.pry
    end

    def ohio_candidates
      #puts "Here are the Ohio candidates:
          #1.) Democrat - Sherrod Brown - incumbent
          #2.) Republican - Melissa Ackison - candidate
          #3.) Republican - Don Elijah Eckhart - candidate
          #4.) Republican - Mike Gibbons - candidate
          #5.) Republican - Dan Kiley - candidate
          #8.) Republican - Jim  Renacci - candidate
          #9.) Republican - Josh Mandel - withdrawn
        #"
    end

        def westviriginia_candidates
          puts "Here are the West Virginia candidates:
              1.) Democrat - Joe Manchin III - incumbent
              2.) Democrat - Paula Jean Swearengin - candidate
              3.) Democrat - Chase Henderson - candidate
              4.) Republican - Don Blankenship - candidate
              5.) Republican - Bo Copley - candidate
              8.) Republican - Evan Jenkins - candidate
              9.) Republican - Tom Willis - candidate
              10.) Republican - Scott Ernst - candidate
            "
        end

end

Candidate.northdakota_candidates
