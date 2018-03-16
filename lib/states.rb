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
    #scrape_states
  end

  def list_candidates
    @candidates << Scraper.scrape_arizona
    binding.pry
  end


  #def self.all
    #@@all << self
  #end

  #def self.add_candidate
    #candidate = #scraped data
    #@candidates << candidate
  #end

  #def self.candidates
    #@candidates << Candidates.new
  #end
end

Pry.start
