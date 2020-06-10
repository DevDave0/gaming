class PlayerGame
    attr_reader :player, :game, :platform
    attr_accessor :time_played

    @@all = []

    def initialize(player, game, platform, time_played)
        @platform = platform
        @game = game
        @player = player
        @time_played = time_played
        @@all << self
    end

    def self.all
        @@all
    end

end
