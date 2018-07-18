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
      "Arizona" => ["Democrats", "Republicans", "Independent", "Not running", "Green Party", "Libertarian"],
      "Florida" => ["Democrats", "Republicans", "Republican Write-in candidates", "Libertarians", "Independents"],
      "Indiana" => ["Democrat", "Republicans", "Libertarians", "Independents"],
      "Minnesota" => ["Democrats", "Republicans"],
      "Mississippi" => ["Democrats", "Republicans", "Green Party", "Libertarians", "Independents"],
      "Missouri" => ["Democrats", "Republicans", "Independent", "Libertarian"],
      "Montana" => ["Democrats", "Republicans", "Green Party", "Libertarian"],
      "Nevada" => ["Democrats", "Republicans", "Independent American", "Libertarian", "Nonpartisan"],
      "North Dakota" => ["Democrats", "Republicans"],
      "Ohio" => ["Democrat", "Republicans"],
      #"Tennessee" => [""],
      #"Texas" => [""],
      "West Virginia" => ["Democrat", "Republicans"]
    }
    candidates = {
      "Arizona" => [5, 6, 7, 9, 10, 11],
      "Florida" => [12, 14, 15, 17, 18],
      "Indiana" => [20, 22, 24, 25],
      "Minnesota" => [27, 29],
      "Mississippi" => [33, 34, 36, 37, 38],
      "Missouri" => [30, 31, 33, 34],
      "Montana" => [35, 37, 39, 41],
      "Nevada" => [42, 44, 46, 47, 48],
      "North Dakota" => [49, 50],
      "Ohio" => [52, 53],
      #"Tennessee" => [],
      #"Texas" => [],
      "West Virginia" => [56, 58]
    }
    self.enumerate(self.create_hash(parties[state], candidates[state]))
    #binding.pry
  end

end

Pry.start
