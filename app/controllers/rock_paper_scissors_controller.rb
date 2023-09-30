class RockPaperScissorsController < ApplicationController
  def index; end

  def generate_item
    service = RockPaperScissor.new
    generated_item = service.generate

    render json: { result: service.game_result(params[:chosed_item], generated_item), 
      generated_item: generated_item }, 
      status: :ok, 
      content_type: 'application/json'
  end
end
