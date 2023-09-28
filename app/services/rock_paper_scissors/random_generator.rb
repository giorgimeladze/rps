module RockPaperScissors
  class RandomGenerator
    GAME_ITEMS = ['rock', 'paper', 'scissors']

    def self.call
      GAME_ITEMS.sample
    end
  end
end