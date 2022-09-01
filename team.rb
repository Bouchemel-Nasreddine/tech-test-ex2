require 'securerandom'

class Team 

    @id
    @name
    @players = Array.new(11).each { |i| i = "Player #{i}" }
    @points #it will be used to keep track of points and to order teams later
    
    def initialize(name)
        @id = SecureRandom.uuid
        @name = name
        @points = 0
    end

    def id
        @id
    end

    def name
        @name
    end

    def points
        @points
    end

    def increasePoints(point)
        @points += point
    end

end