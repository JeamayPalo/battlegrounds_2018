require_relative './environment'

class Scraper

#STATES = [ "Alaska", "Alabama", "Arkansas", "Arizona", "California", "Colorado", "Connecticut", "Delaware", "Florida",
#"Georgia", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Lousiana", "Massachusetts", "Maryland",
#"Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire",
#"New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Caorlina", "South Dakota",
#"Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"]

#OPTION 1 (Numbered)
  #def self.scrape_states
    #doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    #battleground_states = [doc.css("table.bptable td").text].first.split
    #(STATES & battleground_states).each.with_index(1) do |state, index|
      #puts "#{index}.) #{state}"
    #end
    #State.create(state)
  #end

  def self.scrape_states
    doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    battleground_states = [doc.css("table.bptable td").text]
    battleground_states.each do |state|
        puts "#{state}"
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
