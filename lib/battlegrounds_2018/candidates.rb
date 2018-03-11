require "battlegrounds_2018/version"

module Battlegrounds2018
  # Your code goes here...
    attr_accessor :name, :url, :candidate

    def initialize(name = nil,  url = nil)
      @name = name
      @url = url
    end

    def list_state_candidates
      input = gets.strip
      if input = 'Arizona'
        puts "Here are the Arizona candidates:
          1.) Republican - Jeff Flake - incumbent
          2.) Republican - Joe Arpaio - candidate
          3.) Republican - Christian Diegel - candidate
          4.) Republican - Michelle Griffin - candidate
          5.) Republican - Martha McSally - candidate
          6.) Republican - Nicholas Tutora - candidate
          7.) Republican - Kelli Ward - candidate
          8.) Democrat - Deedra Abboud - candidate
          9.) Democrat - Bob Bishop - candidate
          10.) Democrat - Chris Russell - candidate
          11.) Democrat - Richard Sherzan - candidate
          12.) Democrat - Kyrsten Sinema - candidate
          13.) Democrat - Jim Moss - withdrew
        "
      elsif 2
      elsif 3
      elsif 4
      elsif 5
      elsif 6
      elsif 7
      elsif 8
      elsif 9
      else "Invalid input, please type in 'exit'."
    end


end
