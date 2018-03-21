require_relative './environment'


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
    battleground_states.each do |state|
      puts "#{state}"
      State.create(state) #create by name so it doesn't duplicate
    end
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
      arizona_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
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
      florida_candidates.each do |key, array|
        puts "#{key}"
        array.each do |candidate|
          puts "#{candidate}"
        end
      end
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
