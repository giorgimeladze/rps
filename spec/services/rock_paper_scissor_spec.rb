require 'rails_helper'

RSpec.describe RockPaperScissor, type: :service do
  describe '#generate', :vcr do
    let(:api_response) do
      VCR.use_cassette('rock_paper_scissors/throw') do
        FaradayClient.get_call(ENV['GAME_BASE_URI'], ENV['GAME_PATH'])
      end
    end

    it 'returns one of three throws' do
      item_array = RockPaperScissors::RandomGenerator::GAME_ITEMS
      response = subject.generate
      expect(item_array).to include(response)
    end
  end
end
