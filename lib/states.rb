require_relative './environment'
#require_relative './scraper'

#require 'open-uri'
#require 'pry'
#require 'nokogiri'

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
    @@all << self
  end

#Instance Methods

  def list_candidates
    puts "The #{@name.capitalize} candidates are:"
      if @name == 'arizona'
        @candidates << Scraper.scrape_arizona
      elsif @name == 'florida'
        @candidates << Scraper.scrape_florida
      elsif @name == 'missouri'
        @candidates << Scraper.scrape_missouri
      elsif @name == 'montana'
        @candidates << Scraper.scrape_montana
      elsif @name == 'nevada'
        @candidates << Scraper.scrape_nevada
      elsif @name == 'northdakota'
        @candidates << Scraper.scrape_northdakota
      elsif @name == 'ohio'
        @candidates << Scraper.scrape_ohio
      elsif @name == 'westvirginia'
        @candidates << Scraper.scrape_westvirginia
      else nil
    end
  end

end

Pry.start
