require_relative '../config/environment.rb'



league = Game.new('league of legends')
destiny = Game.new('destiny')
halo = Game.new('Halo')
valorant = Game.new('valorant')

mike = Player.new('Mike')
david = Player.new('David')
maddie = Player.new('Maddie')
josh = Player.new('Josh')

david_destiny = PlayerGame.new(david,destiny,'ps4', 10)
mike_destiny = PlayerGame.new(mike, destiny,'xbox', 1000)
maddie_league = PlayerGame.new(maddie,league,'PC', 15)
josh_halo = PlayerGame.new(josh, halo,'xbox', 550)
david_valorant = PlayerGame.new(david, valorant, 'PC', 100)

david.git_good(destiny, 10)


print david.time_played(destiny)

# binding.pry