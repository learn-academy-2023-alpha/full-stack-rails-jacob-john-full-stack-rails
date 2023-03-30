Rails.application.routes.draw do
  get '/homes' => 'home#index', as:'homes'
  get '/homes/:id' => 'home#show', as: 'home'

end
