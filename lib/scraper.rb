require_relative './environment'
require_relative './states'

class Scraper

  def self.scrape_states
    doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    battleground_states = [
      doc.css("span#Arizona").text,
      doc.css("span#Florida").text,
      doc.css("span#Indiana").text,
      doc.css("span#Missouri").text,
      doc.css("span#Montana").text,
      doc.css("span#Nevada").text,
      doc.css("span#North_Dakota").text,
      doc.css("span#Ohio").text,
      doc.css("span#West_Virginia").text
    ]
    battleground_states.each.with_index(1) do |state, index|
      puts "#{index}.) #{state}"
      State.create(state)
    end
  end

  def self.scrape_candidates(index)
    doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    candidates_array = [doc.css("#mw-content-text").css("ul")[index].text]
    candidates_array
  end

  def self.enumerate(state_candidates)
    state_candidates.each do |key, array|
      puts "#{key}"
      array.each do |candidate|
        puts "#{candidate}"
      end
    end
  end

  def self.scrape_arizona
      doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      arizona_candidates = {
        "Incumbent" => Scraper.scrape_candidates(8), #Incumbent
        "Democrats" => Scraper.scrape_candidates(5), #Democrats
        "Republicans" => Scraper.scrape_candidates(6), #Republicans
        "Independent" => Scraper.scrape_candidates(7), #Independent
        "Libertarian" => Scraper.scrape_candidates(9) #Libertarian
      }
      Scraper.enumerate(arizona_candidates)
  end

    def self.scrape_florida
      doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      florida_candidates = {
        "Democrats" => Scraper.scrape_candidates(10), #Democrats
        "Republicans" => Scraper.scrape_candidates(11), #Republicans
        "Potential" => Scraper.scrape_candidates(12),  #Potential
        "Libertarian" => Scraper.scrape_candidates(13),  #Libertarian
        "Independents" => Scraper.scrape_candidates(14) #Independents
      }
      Scraper.enumerate(florida_candidates)
    end

    def self.scrape_indiana
      doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      indiana_candidates = {
        "Democrat - Incumbent" => Scraper.scrape_candidates(15), #Democrats
        "Republicans" => Scraper.scrape_candidates(17), #Republicans
        "Independents" => Scraper.scrape_candidates(19) #Independents
      }
      Scraper.enumerate(indiana_candidates)
    end

    def self.scrape_missouri
      doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      missouri_candidates = {
        "Democrats" => Scraper.scrape_candidates(31), #Democrats
        "Republicans" => Scraper.scrape_candidates(32), #Republicans
        "Independent" => Scraper.scrape_candidates(34), #Independent
        "Libertarian" => Scraper.scrape_candidates(35) #Libertarian
      }
      Scraper.enumerate(missouri_candidates)
    end

    def self.scrape_montana
      doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      montana_candidates = {
        "Democrats" => Scraper.scrape_candidates(36), #Democrats
        "Republicans" => Scraper.scrape_candidates(37), #Republicans
        "Green Party" => Scraper.scrape_candidates(39), #Green Party
        "Libertarian" => Scraper.scrape_candidates(40) #Libertarian
      }
      Scraper.enumerate(montana_candidates)
    end

    def self.scrape_nevada
      doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      nevada_candidates = {
        "Democrats" => Scraper.scrape_candidates(43), #Democrats
        "Republicans" => Scraper.scrape_candidates(45) #Republicans
      }
      Scraper.enumerate(nevada_candidates)
    end

    def self.scrape_northdakota
      northdakota = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      northdakota_candidates = {
        "Democrats" => [northdakota.css("#mw-content-text").css("ul")[47].text], #Democrats
        "Republican" => [northdakota.css("#mw-content-text").css("ul")[48].text], #Republican
      }
      northdakota_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
    end

    def self.scrape_ohio
      ohio = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      ohio_candidates = {
        "Democrat" => [ohio.css("#mw-content-text").css("ul")[50].text], #Democrat
        "Republicans" => [ohio.css("#mw-content-text").css("ul")[51].text] #Republicans
      }
      ohio_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
    end

    def self.scrape_westvirginia
      westvirginia = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      westvirginia_candidates = {
        "Democrats" => [westvirginia.css("#mw-content-text").css("ul")[58].text], #Democrats
        "Republicans" => [westvirginia.css("#mw-content-text").css("ul")[60].text], #Republicans
      }
      westvirginia_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
    end

end

Pry.start
