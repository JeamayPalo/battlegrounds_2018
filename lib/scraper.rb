require_relative './environment'
#require_relative './states'

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

  #Possible Refactoring:
  #def self.scrape_arizona(party = [], candidates = [])
    #party = ["Democrats", "Republicans", "Independent", "Incumbent", "Libertarian"]
    #candidates = [Scraper.scrape_candidates(5..9).to_a.sort_by {|index| Scraper.scrape_candidates(index)}]
    #arizona_candidates = Hash[party.zip(candidates)]
    #Scraper.enumerate(arizona_candidates)
  #end

  def self.create_hash(party = [], candidate_numbers = [])
    obj = {}
    if party.size == candidate_numbers.size
      party.size.times do |i|
        obj[party[i]] = Scraper.scrape_candidates(candidate_numbers[i])
      end
    end
    obj
  end

  def self.scrape_arizona
    arizona_candidates = self.create_hash(["Incumbent", "Democrats", "Republicans", "Independent", "Libertarian"], [8, 5, 6, 7, 9])
    Scraper.enumerate(arizona_candidates)
  end

  def self.scrape_florida
    florida_candidates = self.create_hash(["Democrats", "Republicans", "Potential", "Libertarian", "Independents"], [10, 11, 12, 13, 14])
    Scraper.enumerate(florida_candidates)
  end

  def self.scrape_indiana
    indiana_candidates = {
      "Democrat - Incumbent" => Scraper.scrape_candidates(15), #Democrats
      "Republicans" => Scraper.scrape_candidates(17), #Republicans
      "Independents" => Scraper.scrape_candidates(19) #Independents
    }
    Scraper.enumerate(indiana_candidates)
  end

  def self.scrape_missouri
    missouri_candidates = {
      "Democrats" => Scraper.scrape_candidates(31), #Democrats
      "Republicans" => Scraper.scrape_candidates(32), #Republicans
      "Independent" => Scraper.scrape_candidates(34), #Independent
      "Libertarian" => Scraper.scrape_candidates(35) #Libertarian
    }
    Scraper.enumerate(missouri_candidates)
  end

  def self.scrape_montana
    montana_candidates = {
      "Democrats" => Scraper.scrape_candidates(36), #Democrats
      "Republicans" => Scraper.scrape_candidates(37), #Republicans
      "Green Party" => Scraper.scrape_candidates(39), #Green Party
      "Libertarian" => Scraper.scrape_candidates(40) #Libertarian
    }
    Scraper.enumerate(montana_candidates)
  end

  def self.scrape_nevada
    nevada_candidates = {
      "Democrats" => Scraper.scrape_candidates(43), #Democrats
      "Republicans" => Scraper.scrape_candidates(45) #Republicans
    }
    Scraper.enumerate(nevada_candidates)
  end

  def self.scrape_northdakota
    northdakota_candidates = {
      "Democrats" => Scraper.scrape_candidates(47), #Democrats
      "Republican" => Scraper.scrape_candidates(48) #Republican
    }
    Scraper.enumerate(northdakota_candidates)
  end

  def self.scrape_ohio
    ohio_candidates = {
      "Democrat" => Scraper.scrape_candidates(50), #Democrat
      "Republicans" => Scraper.scrape_candidates(51) #Republicans
    }
    Scraper.enumerate(ohio_candidates)
  end

  def self.scrape_westvirginia
    westvirginia_candidates = {
      "Democrats" => Scraper.scrape_candidates(53), #Democrats
      "Republicans" => Scraper.scrape_candidates(55) #Republicans
    }
    Scraper.enumerate(westvirginia_candidates)
  end

end

Pry.start
