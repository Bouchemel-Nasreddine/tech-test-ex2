require_relative "team"
require_relative "utils"

teams = []

#intializing the 20 teams
for i in 1..20
    teams.push(Team.new("Team #{i}"))
end

Utils.playLeague(teams)


