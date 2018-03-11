require "battlegrounds_2018/version"

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

        def indiana_candidates
            puts "Here are the Indiana candidates:
              1.) Democrat - Joe Donnelly - incumbent
              2.) Democrat - Bill Bowser - withdrawn
              3.) Democrat - Martin Del Rio - withdrawn
              4.) Republican - Mike Braun - candidate
              5.) Republican - Luke Messer - candidate
              6.) Republican - Todd Rokita - candidate
              7.) Republican - Terry Henderson - candidate
              8.) Republican - Andy Horning - candidate
              9.) Republican - Mark Hurt - candidate
              10.) Republican - Kiel Stone - candidate
              11.) Republican - Andrew Takami - candidate
              12.) Independent - John Piper - candidate
              13.) Independent - Andrew Straw - candidate
            "
          end

          def maine_candidates
              puts "Here are the Maine candidates:
                1.) Independent - Angus King - incumbent
                2.) Independent - Alex hammer - candidate
                3.) Independent - Benjamin Pollard - candidate
                4.) Democrat - Zak Ringelstein - candidate
                5.) Republican - Eric Brakey - candidate
                6.) Libertarian - Chris Lyons - candidate
              "
            end

            def michigan_candidates
                puts "Here are the Michigan candidates:
                  1.) Democrat - Debbie Stabenow - incumbent
                  2.) Democrat - Craig Smith - withdrawn
                  3.) Republican - Bob Carr - candidate
                  4.) Republican - John James - candidate
                  5.) Republican - Sandy Pensler - candidate
                  6.) Republican - William White - candidate
                  7.) Republican - Robert P. Young Jr. - candidate
                  8.) Green Party - Anita Belle - withdrawn
                  9.) Independent - Marcia Squier - candidate
                "
              end


end
