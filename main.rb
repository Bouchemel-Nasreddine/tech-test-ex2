require_relative "team"
require_relative "utils"

# through the code and especially in the utils class, multiple "puts" statements has been commented out, if you want
# the whole tournament flow just uncomment them

# the aligorithme used here is the rotate algorithme,with enough array rotates (18), every team should have the chance to
# play againt the others

teams = []

#intializing the 20 teams
for i in 1..20
    teams.push(Team.new("Team #{i}"))
end

Utils.playLeague(teams)


