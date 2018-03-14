require_relative '../battlegrounds_2018'

class States

  attr_accessor :name, :candidates

  def initialize(name)
    @name = name
    @candidates = []
  end

  @@all = []

  def scrape_states
  end

  def self.list_states
    # put scraped data from states here 
    puts "Here are the Battleground States for the Midterm Elections of 2018:
    1.) Arizona
    2.) Florida
    3.) Indiana
    4.) Missouri
    5.) Montana
    6.) Nevada
    7.) North Dakota
    8.) Ohio
    9.) West Virginia
    "
  end

  def self.all
    @@all << self
  end

  def self.add_candidate
    candidate = #scraped data
    @candidates << candidate
  end

  #def self.candidates
    #@candidates << Candidates.new
  #end

end
