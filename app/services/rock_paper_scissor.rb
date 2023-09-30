class RockPaperScissor
  attr_reader :remote_generator, :random_generator

  PLAYER_WINS = 'you win'
  DRAW = 'The result is a draw'
  COMPUTER_WINS = 'you lost'

  def initialize
    @remote_generator = RockPaperScissors::RemoteGenerator
    @random_generator = RockPaperScissors::RandomGenerator
  end

  def generate
    api_response = @remote_generator.call

    api_response.successful? ? api_response.item : @random_generator.call
  end

  def game_result(chosed_item, generated_item)
    return DRAW if chosed_item == generated_item

    case chosed_item
    when 'rock'
      generated_item == 'paper' ? COMPUTER_WINS : PLAYER_WINS
    when 'paper'
      generated_item == 'scissors' ? COMPUTER_WINS : PLAYER_WINS
    when 'scissors'
      generated_item == 'rock' ? COMPUTER_WINS : PLAYER_WINS
    end
  end
end
