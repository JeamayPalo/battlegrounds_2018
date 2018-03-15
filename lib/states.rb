#require_relative '../battlegrounds_2018'
require 'nokogiri'
require 'open-uri'
require 'pry'

class State
  attr_accessor :name, :candidates

  def initialize(name)
    @name = name
    @candidates = []
  end

  @@all = []

  def self.scrape_states
    doc = Nokogiri::HTML(open("https://ballotpedia.org/U.S._Senate_battlegrounds,_2018"))
    doc.css("span##{@name}").text
    #doc.css(".grey-text").text
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
