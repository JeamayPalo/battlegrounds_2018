require_relative './scraper'

require 'open-uri'
require 'pry'
require 'nokogiri'

class State
  attr_accessor :name, :candidates

  def initialize(name)
    @name = name
    @candidates = []
  end

  @@all = []

#Class Methods

  def self.battleground_states
    puts "The battleground states for the Midterm Elections of 2018 are:"
    Scraper.scrape_states
  end

  def self.all
    @@all << self
  end

#Instance Methods

  def add_candidates
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


  def list_candidates
      if @name == 'arizona'
        puts "The Arizona candidates are:"
        Scraper.scrape_arizona
      elsif @name == 'florida'
        puts "The Florida candidates are:"
        Scraper.scrape_florida
      elsif @name == 'missouri'
        puts "The Missouri candidates are:"
        Scraper.scrape_missouri
      elsif @name == 'montana'
        puts "The Montana candidates are:"
        Scraper.scrape_montana
      elsif @name == 'nevada'
        puts "The Nevada candidates are:"
        Scraper.scrape_nevada 
      elsif @name == 'northdakota'
        @candidates.each { |key, value| puts "The candidates for North Dakota are: #{key} - #{value}."}
      elsif @name == 'ohio'
        @candidates.each { |key, value| puts "The candidates for Ohio are: #{key} - #{value}."}
      elsif @name == 'westvirginia'
        @candidates.each { |key, value| puts "The candidates for West Virginia are: #{key} - #{value}."}
      else nil
    end
  end


end

Pry.start
