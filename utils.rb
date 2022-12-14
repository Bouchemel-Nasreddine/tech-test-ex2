
require "SecureRandom"

class Utils

    def self.sortLeagueTable(teams)
        teams.sort_by(&:points).reverse()
    end
    

    def self.printLeagueTable(teams)
        puts "rank |  team   | points"
        teams.each_with_index do |team, index|
            puts (index + 1).to_s + " | " + team.name + " | " + team.points.to_s
        end
    end
    

    def self.playRound(round, teams)
        #puts {"round #{round}" => "started"}
        for i in 0..teams.length()/2 -1
            winner = SecureRandom.random_number(3) #2 means away team  wins, 1 means home team wins, and 0 means a draw
            #puts "#{teams[i].name} vs #{teams[teams.length() - i - 1].name}"
            if (winner == 2)
                teams[teams.length() - i - 1].increasePoints(3)
                #puts "#{teams[teams.length() - i - 1].name} won"
            elsif(winner == 1)
                teams[i].increasePoints(3)
                #puts "#{teams[i].name} won"
            elsif (winner == 0)
                teams[i].increasePoints(1)
                teams[teams.length() - i - 1].increasePoints(1)
                #puts "draw"
            end
        end
    end

    def self.playLeague(teams)
        #printLeagueTable(teams)
        puts "league started!"
        for i in 1..18            
            #puts "********round #{i}********"
            playRound(i, teams)
            #puts "********LeagueTable********"
            #printLeagueTable(teams)
            teams = teams.rotate(1)
        end
        teams = sortLeagueTable(teams)
        puts "winner is #{teams[0].name}"
        puts "second is #{teams[1].name}"
        puts "third is #{teams[2].name}"
        printLeagueTable(teams)
    end

end
