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

  def list_states
    #add scraped states scrape_states
    #@@all << Scraper.scrape_states
  end

#Instance Method
  def list_candidates
    if @name == 'arizona'
      @candidates << Scraper.scrape_arizona
      puts "The candidates for Arizona are #{@candidates}."
    elsif @name == 'florida'
      @candidates << Scraper.scrape_florida
      puts "The candidates for Florida are #{@candidates}."
    else nil
      binding.pry
    end
  end


end

Pry.start
