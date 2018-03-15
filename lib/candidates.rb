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

    def self.scrape_arizona
      arizona = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      arizona.css("#mw-content-text").css("ul")[8].text #Incumbent
      arizona.css("#mw-content-text").css("ul")[5].text #Democrats
      arizona.css("#mw-content-text").css("ul")[6].text #Republicans
      arizona.css("#mw-content-text").css("ul")[7].text #Independent
      arizona.css("#mw-content-text").css("ul")[9].text #Libertarian
    end

    def self.scrape_florida
      florida = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      florida.css("#mw-content-text").css("ul")[10].text  #Democrats
      florida.css("#mw-content-text").css("ul")[11].text  #Republicans
      florida.css("#mw-content-text").css("ul")[12].text  #Potential
      florida.css("#mw-content-text").css("ul")[13].text  #Libertarian
      florida.css("#mw-content-text").css("ul")[14].text  #Independents
    end

    def self.scrape_missouri
      missouri = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      missouri.css("#mw-content-text").css("ul")[31].text #Democrats
      missouri.css("#mw-content-text").css("ul")[32].text #Republicans
      missouri.css("#mw-content-text").css("ul")[33].text #Republican - Withdrew
      missouri.css("#mw-content-text").css("ul")[34].text #Independent
      missouri.css("#mw-content-text").css("ul")[35].text #Libertarian
    end

    def self.scrape_montana
      montana = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      montana.css("#mw-content-text").css("ul")[36].text  #Democrats
      montana.css("#mw-content-text").css("ul")[37].text  #Republicans
      montana.css("#mw-content-text").css("ul")[38].text  #Republicans - Withdrew
      montana.css("#mw-content-text").css("ul")[39].text  #Green Party
      montana.css("#mw-content-text").css("ul")[40].text  #Libertarian
      binding.pry
    end

    def self.scrape_nevada
      nevada = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      nevada.css("#mw-content-text").css("ul")[41].text #Democrats
      nevada.css("#mw-content-text").css("ul")[42].text #Democrat - withdrew
      nevada.css("#mw-content-text").css("ul")[43].text #Republicans
      binding.pry
    end

    def self.scrape_northdakota
      northdakota = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      northdakota.css("#mw-content-text").css("ul")[44].text #Democrats
      northdakota.css("#mw-content-text").css("ul")[45].text #Republican
      northdakota.css("#mw-content-text").css("ul")[46].text #Republicans - Withdrew
      binding.pry
    end

    def self.scrape_ohio
      ohio = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      ohio.css("#mw-content-text").css("ul")[47].text #Democrats
      ohio.css("#mw-content-text").css("ul")[48].text #Republican
      ohio.css("#mw-content-text").css("ul")[49].text #Republicans - Withdrew
      ohio.css("#mw-content-text").css("ul")[50].text #Not Running
    end

    def self.scrape_westvirginia
      westvirginia = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      westvirginia.css("#mw-content-text").css("ul")[55].text #Democrats
      westvirginia.css("#mw-content-text").css("ul")[56].text #Democrats - Withdrew
      westvirginia.css("#mw-content-text").css("ul")[57].text #Republicans
      westvirginia.css("#mw-content-text").css("ul")[58].text #Republican - Withdrew
      binding.pry
    end

end
