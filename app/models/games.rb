class Game
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
    end 

    def self.all
        @@all
    end

    def player_game
        PlayerGame.all.select{|playergame|playergame.game == self}
    end

    def players
        self.player_game.map{|playergame| playergame.player}
    end

    def platforms
        self.player_game.map{|playergame| playergame.platform}
    end


end