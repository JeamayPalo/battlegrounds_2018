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

  def all
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
        @candidates.each { |key, value| puts "The candidates for Arizona are: #{key} - #{value}."}
      elsif @name == 'florida'
        @candidates.each { |key, value| puts "The candidates for Florida are: #{key} - #{value}."}
      elsif @name == 'missouri'
        @candidates.each { |key, value| puts "The candidates for Missouri are: #{key} - #{value}."}
      elsif @name == 'montana'
        @candidates.each { |key, value| puts "The candidates for Montana are: #{key} - #{value}."}
      elsif @name == 'nevada'
        @candidates.each { |key, value| puts "The candidates for Nevada are: #{key} - #{value}."}
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
