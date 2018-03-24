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

  def self.create_hash(party = [], candidate_numbers = [])
    obj = {}
    if party.size == candidate_numbers.size
      party.size.times do |i|
        obj[party[i]] = Scraper.scrape_candidates(candidate_numbers[i])
      end
    end
    obj
  end

  def self.enumerate(state_candidates)
    state_candidates.each do |key, array|
      puts "-----#{key}-----"
      array.each do |candidate|
        puts "#{candidate}"
      end
    end
  end

  def self.scrape(state)
    parties = {
      "Arizona" => ["Incumbent", "Democrats", "Republicans", "Independent", "Libertarian"],
      "Florida" => ["Democrats", "Republicans", "Potential", "Libertarian", "Independents"],
      "Indiana" => ["Democrat", "Republicans", "Independents"],
      "Missouri" => ["Democrats", "Republicans", "Independent", "Libertarian"],
      "Montana" => ["Democrats", "Republicans", "Green Party", "Libertarian"],
      "Nevada" => ["Democrats", "Republicans", "Independent American", "Libertarian", "Nonpartisan"]
      "North Dakota" => ["Democrats", "Republicans"]
    }
    candidates = {
      "Arizona" => [8, 5, 6, 7, 9],
      "Florida" => [10, 11, 12, 13, 14],
      "Indiana" => [15, 17, 19],
      "Missouri" => [30, 31, 33, 34],
      "Montana" => [35, 37, 39, 41],
      "Nevada" => [42, 44, 46, 47, 48],
      "North Dakota" => [49, 50]
    }
    self.enumerate(self.create_hash(parties[state], candidates[state]))
  end

  #def self.scrape_arizona
    #arizona_candidates = self.create_hash(["Incumbent", "Democrats", "Republicans", "Independent", "Libertarian"], [8, 5, 6, 7, 9])
    #self.enumerate(arizona_candidates)
  #end

  #def self.scrape_florida
    #florida_candidates = self.create_hash(["Democrats", "Republicans", "Potential", "Libertarian", "Independents"], [10, 11, 12, 13, 14])
    #self.enumerate(florida_candidates)
  #end

  #def self.scrape_indiana
    #indiana_candidates = self.create_hash(["Democrat", "Republicans", "Independents"], [15, 17, 19])
    #self.enumerate(indiana_candidates)
  #end

  #def self.scrape_missouri
    #missouri_candidates = self.create_hash(["Democrats", "Republicans", "Independent", "Libertarian"], [30, 31, 33, 34])
    #self.enumerate(missouri_candidates)
  #end

  #def self.scrape_montana
    #montana_candidates = self.create_hash(["Democrats", "Republicans", "Green Party", "Libertarian"], [35, 37, 39, 41])
    #self.enumerate(montana_candidates)
  #end

  #def self.scrape_nevada
    #nevada_candidates = self.create_hash(["Democrats", "Republicans", "Independent American", "Libertarian", "Nonpartisan"], [42, 44, 46, 47, 48])
    #self.enumerate(nevada_candidates)
  #end

  def self.scrape_northdakota
    northdakota_candidates = self.create_hash(["Democrats", "Republicans"], [49, 50])
    self.enumerate(northdakota_candidates)
  end

  def self.scrape_ohio
    ohio_candidates = self.create_hash(["Democrat", "Republicans"], [52, 53])
    self.enumerate(ohio_candidates)
  end

  def self.scrape_westvirginia
    westvirginia_candidates = self.create_hash(["Democrat", "Republicans"], [56, 58])
    self.enumerate(westvirginia_candidates)
  end

end

Pry.start
