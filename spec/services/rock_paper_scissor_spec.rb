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

  describe '#game_result' do
    let(:draw) { RockPaperScissor::DRAW }
    let(:win) { RockPaperScissor::PLAYER_WINS }
    let(:lose) { RockPaperScissor::COMPUTER_WINS }
    let(:rock) { 'rock' }
    let(:paper) { 'paper' }
    let(:scissors) { 'scissors' }

    it 'generates draw if params are the same' do
      expect(subject.game_result(rock, rock)).to eq draw
    end

    it 'generates win' do
      expect(subject.game_result(rock, scissors)).to eq win
      expect(subject.game_result(paper, rock)).to eq win
      expect(subject.game_result(scissors, paper)).to eq win
    end

    it 'generates lose' do
      expect(subject.game_result(rock, paper)).to eq lose
      expect(subject.game_result(scissors, rock)).to eq lose
      expect(subject.game_result(paper, scissors)).to eq lose
    end
  end
end
