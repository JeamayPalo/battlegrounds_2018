require_relative './environment'

class State
  attr_accessor :name, :candidates

  def initialize(name)
    @name = name
    @candidates = []
  end

  @@all = []

#Class Methods

  def self.battleground
    puts "The battleground states for the Midterm Elections of 2018 are:"
    Scraper.scrape_states
  end

  def self.all
    @@all
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
        @candidates << Scraper.scrape("Arizona")
      elsif @name == 'florida'
        @candidates << Scraper.scrape("Florida")
      elsif @name == 'indiana'
        @candidates << Scraper.scrape("Indiana")
      elsif @name == 'missouri'
        @candidates << Scraper.scrape("Missouri")
      elsif @name == 'montana'
        @candidates << Scraper.scrape("Montana")
      elsif @name == 'nevada'
        @candidates << Scraper.scrape("Nevada")
      elsif @name == 'northdakota'
        @candidates << Scraper.scrape("North Dakota")
      elsif @name == 'ohio'
        @candidates << Scraper.scrape("Ohio")
      elsif @name == 'westvirginia'
        @candidates << Scraper.scrape("West Virginia")
      else "#{@name.capitalize} is not a battleground state for the Midterm Elections 2018."
    end
  end

end


#Pry.start
