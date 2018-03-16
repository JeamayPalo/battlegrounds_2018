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

  def states
    @@all << self
  end

#Instance Method
  def list_candidates
      if @name == 'arizona'
        @candidates << Scraper.scrape_arizona
        puts "The candidates for Arizona are:"
          @candidates.each do |key, value|
            puts "#{key}"
            puts "#{value}"
          end
      elsif @name == 'florida'
        @candidates << Scraper.scrape_florida
        puts "The candidates for Florida are #{@candidates}."
      elsif @name == 'missouri'
        @candidates << Scraper.scrape_missouri
        puts "The candidates for Missouri are #{@candidates}."
      elsif @name == 'montana'
        @candidates << Scraper.scrape_montana
        puts "The candidates for Montana are #{@candidates}."
      elsif @name == 'nevada'
        @candidates << Scraper.scrape_nevada
        puts "The candidates for Nevada are #{@candidates}."
      elsif @name == 'northdakota'
        @candidates << Scraper.scrape_northdakota
        puts "The candidates for North Dakota are #{@candidates}."
      elsif @name == 'ohio'
        @candidates << Scraper.scrape_ohio
        puts "The candidates for Ohio are #{@candidates}."
      elsif @name == 'westvirginia'
        @candidates << Scraper.scrape_westvirginia
        puts "The candidates for West Virginia are #{@candidates}."
      else nil
    end
  end


end

Pry.start
