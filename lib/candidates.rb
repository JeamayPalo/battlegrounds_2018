require "battlegrounds_2018/version"
require 'pry'

module Battleground_Candidates2018
  # Your code goes here...
    attr_accessor :party, :name, :status

    def initialize (status = 'candidate')
      @name = name
      @party = party
      @status = status
    end

    def arizona_candidates
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
        binding.pry
      end

      def florida_candidates
          puts "Here are the Florida candidates:
            1.) Democrat - Bill Nelson - incumbent
            2.) Democrat - Tamika Lyles - candidate
            3.) Republican - Augustus Sol Invictus - candidate
            4.) Republican - Lateresa Jones - candidate
            5.) Republican - Howard Knepper- candidate
            6.) Republican - Martin Mikhail - candidate
            7.) Republican - Joe Smith - candidate
            8.) Democrat - Marcia Thorne - candidate
            9.) Democrat - Rick Scott - potential
            10.) Libertarian - Joe Wendt - candidate
            11.) Independent - Joe Allen - candidate
            12.) Independent - Gregory Bowles - candidate
            13.) Independent - Edward Janowski - candidate
          "
        end

        def missouri_candidates
            puts "Here are the Missouri candidates:
              1.) Democrat - Claire McCaskill - incumbent
              2.) Democrat - Angelica Earl - candidate
              3.) Democrat - Travis Gonzalez - candidate
              4.) Republican - Josh Hawley - candidate
              5.) Republican - Bradley Krembs - candidate
              6.) Republican - Robert Marshner - candidate
              7.) Republican - Tony Monetti - candidate
              8.) Republican - Austin Petersen - candidate
              9.) Republican - Courtland Sykes - candidate
              10.) Republican - Camille Lombardi-Olive - withdrew
              11.) Independent - Craig O'Dear - candidate
              13.) Libertarian - Japheth Campbell - candidate
            "
        end

        def montana_candidates
           "Here are the Montana candidates:
              1.) Democrat - Jon Tester - incumbent
              2.) Democrat - Sarah Dean - candidate
              3.) Democrat - Greg Standberg - candidate
              4.) Republican - James Dean - candidate
              5.) Republican - Troy Downing - candidate
              6.) Republican - Russell C. Fagg - candidate
              7.) Republican - Albert Olzewski - candidate
              8.) Republican - Matt Rosendale - candidate
              9.) Republican - Scott Royo McLean - withdrawn
              10.) Republican - Ronald Murray - withdrawn
              11.) Green Party - Thomas Breck - candidate
              12.) Libertarian - Rick Breckenridge - candidate
            "
        end

        def nevada_candidates
          puts "Here are the Nevada candidates:
              1.) Republican - Dean  Heller - incumbent
              2.) Republican - Sarah Gazala - candidate
              3.) Republican - Danny Tarkanian - candidate
              4.) Democrat - Bobby Mahendra - candidate
              5.) Democrat - Jacky Rosen - candidate
              8.) Democrat - Jesse Sbaih - candidate
              9.) Democrat - Jay Craddock - withdrawn
            "
        end

        def northdakota_candidates
          puts "Here are the North Dakota candidates:
              1.) Democrat - Heidi Heitkamp - incumbent
              2.) Democrat - Dustin David Peyer - candidate
              3.) Republican - Kevin Cramer - candidate
              4.) Republican - Tom Campbell - withdrawn
              5.) Republican - Gary Emineth - withdrawn
            "
        end

        def ohio_candidates
          puts "Here are the Ohio candidates:
              1.) Democrat - Sherrod Brown - incumbent
              2.) Republican - Melissa Ackison - candidate
              3.) Republican - Don Elijah Eckhart - candidate
              4.) Republican - Mike Gibbons - candidate
              5.) Republican - Dan Kiley - candidate
              8.) Republican - Jim  Renacci - candidate
              9.) Republican - Josh Mandel - withdrawn
            "
        end

        def westviriginia_candidates
          puts "Here are the West Virginia candidates:
              1.) Democrat - Joe Manchin III - incumbent
              2.) Democrat - Paula Jean Swearengin - candidate
              3.) Democrat - Chase Henderson - candidate
              4.) Republican - Don Blankenship - candidate
              5.) Republican - Bo Copley - candidate
              8.) Republican - Evan Jenkins - candidate
              9.) Republican - Tom Willis - candidate
              10.) Republican - Scott Ernst - candidate
            "
        end

end
