require_relative './environment'

class Battlegrounds2018::State
  attr_accessor :name, :candidates

  def initialize(name)
    @name = name
    @candidates = []
  end

  @@all = []

#Class Methods

  def self.battleground
    puts "The battleground states for the Midterm Elections of 2018 are:"
    Battlegrounds2018::Scraper.scrape_states
  end

  def self.all
    @@all
    binding.pry
  end

  def self.create(name)
    state = self.new(name)
    state.save
    state
  end

  def self.find_by_name(name)
    @@all.find do |name|
      name
    end
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) ? find_by_name(name) : create(name)
  end

#Instance Methods

  def save
    @@all << self
  end

  def list_candidates
    puts "The #{@name.capitalize} candidates are:"
      if @name == 'arizona'
        @candidates << Battlegrounds2018::Scraper.scrape("Arizona")
      elsif @name == 'florida'
        @candidates << Battlegrounds2018::Scraper.scrape("Florida")
      elsif @name == 'indiana'
        @candidates << Battlegrounds2018::Scraper.scrape("Indiana")
      elsif @name == 'missouri'
        @candidates << Battlegrounds2018::Scraper.scrape("Missouri")
      elsif @name == 'montana'
        @candidates << Battlegrounds2018::Scraper.scrape("Montana")
      elsif @name == 'nevada'
        @candidates << Battlegrounds2018::Scraper.scrape("Nevada")
      elsif @name == 'northdakota'
        @candidates << Battlegrounds2018::Scraper.scrape("North Dakota")
      elsif @name == 'ohio'
        @candidates << Battlegrounds2018::Scraper.scrape("Ohio")
      elsif @name == 'westvirginia'
        @candidates << Battlegrounds2018::Scraper.scrape("West Virginia")
      else "#{@name.capitalize} is not a battleground state for the Midterm Elections 2018."
    end
  end

end


#Pry.start
