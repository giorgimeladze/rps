class RockPaperScissorsController < ApplicationController
  def index; end

  def generate_item
    service = RockPaperScissor.new

    render json: { item: service.generate }
  end
end
