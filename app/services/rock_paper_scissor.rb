class RockPaperScissor
  attr_reader :remote_generator, :random_generator

  def initialize
    @remote_generator = RockPaperScissors::RemoteGenerator
    @random_generator = RockPaperScissors::RandomGenerator
  end

  def generate
    api_response = @remote_generator.call

    api_response.successful? ? api_response.item : @random_generator.call
  end
end
