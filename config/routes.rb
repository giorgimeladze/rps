Rails.application.routes.draw do
  root 'rock_paper_scissors#index'

  get 'generate', to: 'rock_paper_scissors#generate_item'
end
