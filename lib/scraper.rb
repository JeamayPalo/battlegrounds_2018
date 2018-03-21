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
      binding.pry
    end

    def self.scrape_indiana
      indiana = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      indiana_candidates = {
        "Democrat - Incumbent" => [indiana.css("#mw-content-text").css("ul")[15].text],  #Democrats
        "Republicans" => [indiana.css("#mw-content-text").css("ul")[17].text],  #Republicans
        "Independents" => [indiana.css("#mw-content-text").css("ul")[19].text]  #Independents
      }
      indiana_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
    end

    def self.scrape_missouri
      missouri = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      missouri_candidates = {
        "Democrats" => [missouri.css("#mw-content-text").css("ul")[31].text], #Democrats
        "Republicans" => [missouri.css("#mw-content-text").css("ul")[32].text], #Republicans
        "Independent" => [missouri.css("#mw-content-text").css("ul")[34].text], #Independent
        "Libertarian" => [missouri.css("#mw-content-text").css("ul")[35].text] #Libertarian
      }
      missouri_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
    end

    def self.scrape_montana
      montana = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      montana_candidates = {
        "Democrats" => [montana.css("#mw-content-text").css("ul")[36].text],  #Democrats
        "Republicans" => [montana.css("#mw-content-text").css("ul")[37].text],  #Republicans
        "Green Party" => [montana.css("#mw-content-text").css("ul")[39].text],  #Green Party
        "Libertarian" => [montana.css("#mw-content-text").css("ul")[40].text]  #Libertarian
      }
      montana_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
    end

    def self.scrape_nevada
      nevada = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
      nevada_candidates = {
        "Democrats" => [nevada.css("#mw-content-text").css("ul")[43].text], #Democrats
        "Republicans" => [nevada.css("#mw-content-text").css("ul")[45].text]
      }
      nevada_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
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
