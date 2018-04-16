require_relative './environment'

class Battlegrounds2018::Scraper

  def self.scrape_states
    doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    battleground_states = doc.css("table.bptable td").text.split("\n").map do |state|
      state.split("   ").first
    end
    battleground_states.each.with_index(1) do |state, index|
      puts "#{index}.) #{state}"
      Battlegrounds2018::State.create(state)
    end
  end

  def self.scrape_candidates(index)
    doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    candidates_array = [doc.css("#mw-content-text").css("ul")[index].text]
  end

  def self.create_hash(party = [], candidate_numbers = [])
    obj = {}
    if party.size == candidate_numbers.size
      party.size.times do |i|
        obj[party[i]] = Battlegrounds2018::Scraper.scrape_candidates(candidate_numbers[i])
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
      "Maine" => ["Democrats", "Republicans", "Libertarians", "Independents"],
      "Minnesota" => ["Democrats", "Republicans"],
      "Missouri" => ["Democrats", "Republicans", "Independent", "Libertarian"],
      "Montana" => ["Democrats", "Republicans", "Green Party", "Libertarian"],
      "Nevada" => ["Democrats", "Republicans", "Independent American", "Libertarian", "Nonpartisan"],
      "North Dakota" => ["Democrats", "Republicans"],
      "Ohio" => ["Democrat", "Republicans"],
      "West Virginia" => ["Democrat", "Republicans"]
    }
    candidates = {
      "Arizona" => [8, 5, 6, 7, 9],
      "Florida" => [10, 11, 12, 13, 14],
      "Indiana" => [15, 17, 19],
      "Maine" => [20, 21, 22, 23],
      "Minnesota" => [24, 26],
      "Missouri" => [30, 31, 33, 34],
      "Montana" => [35, 37, 39, 41],
      "Nevada" => [42, 44, 46, 47, 48],
      "North Dakota" => [49, 50],
      "Ohio" => [52, 53],
      "West Virginia" => [56, 58]
    }
    self.enumerate(self.create_hash(parties[state], candidates[state]))
  end

end

#Pry.start
