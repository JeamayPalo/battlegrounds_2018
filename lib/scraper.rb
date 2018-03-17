require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_states
    doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    battleground_states = doc.css("span##{@name}").text
    battleground_states
  end

  def self.scrape_arizona
      arizona = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      arizona_candidates = {
        "Incumbent" => [arizona.css("#mw-content-text").css("ul")[8].text], #Incumbent
        "Democrats" => [arizona.css("#mw-content-text").css("ul")[5].text], #Democrats
        "Republicans" => [arizona.css("#mw-content-text").css("ul")[6].text], #Republicans
        "Independent" => [arizona.css("#mw-content-text").css("ul")[7].text], #Independent
        "Libertarian" => [arizona.css("#mw-content-text").css("ul")[9].text] #Libertarian
      }
      arizona_candidates.each {|key, array| puts "#{key}: #{array}"}
      binding.pry
  end

    def self.scrape_florida
      florida = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      florida_candidates = {
        "Democrats" => [florida.css("#mw-content-text").css("ul")[10].text],  #Democrats
        "Republicans" => [florida.css("#mw-content-text").css("ul")[11].text],  #Republicans
        "Potential" => [florida.css("#mw-content-text").css("ul")[12].text],  #Potential
        "Libertarian" => [florida.css("#mw-content-text").css("ul")[13].text],  #Libertarian
        "Independents" => [florida.css("#mw-content-text").css("ul")[14].text]  #Independents
      }
      florida_candidates.each {|key, array| puts "#{key}: #{array}"}
    end

    def self.scrape_missouri
      missouri = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      missouri_candidates = {
        "Democrats" => [missouri.css("#mw-content-text").css("ul")[31].text], #Democrats
        "Republicans" => [missouri.css("#mw-content-text").css("ul")[32].text], #Republicans
        "Republican (withdrew)" => [missouri.css("#mw-content-text").css("ul")[33].text], #Republican - Withdrew
        "Independent" => [missouri.css("#mw-content-text").css("ul")[34].text], #Independent
        "Libertarian" => [missouri.css("#mw-content-text").css("ul")[35].text] #Libertarian
      }
      missouri_candidates.each {|key, array| puts "#{key}: #{array}"}
    end

    def self.scrape_montana
      montana = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      montana_candidates = {
        "Democrats" => [montana.css("#mw-content-text").css("ul")[36].text],  #Democrats
        "Republicans" => [montana.css("#mw-content-text").css("ul")[37].text],  #Republicans
        "Republicans (withdrew)" => [montana.css("#mw-content-text").css("ul")[38].text],  #Republicans - Withdrew
        "Green Party" => [montana.css("#mw-content-text").css("ul")[39].text],  #Green Party
        "Libertarian" => [montana.css("#mw-content-text").css("ul")[40].text]  #Libertarian
      }
      montana_candidates.each {|key, array| puts "#{key}: #{array}"}
    end

    def self.scrape_nevada
      nevada = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      nevada_candidates = {
        "Democrats" => [nevada.css("#mw-content-text").css("ul")[41].text], #Democrats
        "Democrat (withdrew)" => [nevada.css("#mw-content-text").css("ul")[42].text], #Democrat - withdrew
        "Republicans" => [nevada.css("#mw-content-text").css("ul")[43].text] #Republicans
      }
      nevada_candidates.each {|key, array| puts "#{key}: #{array}"}
    end

    def self.scrape_northdakota
      northdakota = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      northdakota_candidates = {
        "Democrats" => [northdakota.css("#mw-content-text").css("ul")[44].text], #Democrats
        "Republican" => [northdakota.css("#mw-content-text").css("ul")[45].text], #Republican
        "Republicans (withdrew)" => [northdakota.css("#mw-content-text").css("ul")[46].text] #Republicans - Withdrew
      }
      northdakota_candidates.each {|key, array| puts "#{key}: #{array}"}
    end

    def self.scrape_ohio
      ohio = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      ohio_candidates = {
        "Democrats" => ohio.css("#mw-content-text").css("ul")[47].text, #Democrats
        "Republican" => ohio.css("#mw-content-text").css("ul")[48].text, #Republican
        "Republicans (withdrew)" => ohio.css("#mw-content-text").css("ul")[49].text #Republicans - Withdrew
      }
      ohio_candidates
    end

    def self.scrape_westvirginia
      westvirginia = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      westvirginia_candidates = {
        "Democrats" => westvirginia.css("#mw-content-text").css("ul")[55].text, #Democrats
        "Democrats (withdrew)" => westvirginia.css("#mw-content-text").css("ul")[56].text, #Democrats - Withdrew
        "Republicans" => westvirginia.css("#mw-content-text").css("ul")[57].text, #Republicans
        "Republican (withdrew)" => westvirginia.css("#mw-content-text").css("ul")[58].text #Republican - Withdrew
      }
      westvirginia_candidates
    end

end

Pry.start
