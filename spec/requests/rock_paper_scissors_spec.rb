require 'rails_helper'

RSpec.describe RockPaperScissorsController, type: :request do
  
  describe 'GET /generate' do
    let(:draw) { RockPaperScissor::DRAW }
    let(:win) { RockPaperScissor::PLAYER_WINS }
    let(:lose) { RockPaperScissor::COMPUTER_WINS }

    it 'renders draw text' do
      allow_any_instance_of(RockPaperScissor).to receive(:generate).and_return('rock')
      get '/generate', params: { chosed_item: 'paper' }

      expect(response).to have_http_status(:ok)
      expect(response.content_type).to include('application/json')

      response_body = JSON.parse(response.body)
      expect(response_body).to include('result', 'generated_item')
      expect(response_body['result']).to eq(RockPaperScissor::PLAYER_WINS)
    end
  end
end