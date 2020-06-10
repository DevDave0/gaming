class Player
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    def player_game
        PlayerGame.all.select{|playergame|playergame.player == self}
    end

    def platforms
        self.player_game.map{|playergame|playergame.platform}
    end

    def games
        self.player_game.map{|playergame| playergame.game}
    end

    def time_played(game)
        self.player_game.find{|playergame|playergame.game == game}.time_played
    end

    def total_time_played
        self.player_game.map{|playergame|playergame.time_played}.reduce(&:+)
    end

    def git_good(game, hours)
        result = self.time_played(game) + hours
        result = self.time_played(game)
    end

end