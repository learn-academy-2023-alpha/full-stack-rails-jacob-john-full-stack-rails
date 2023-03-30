Rails.application.routes.draw do
  get '/homes' => 'home#index', as:'homes'
  get '/homes/new' => 'home#new', as: 'new_blog'
  get '/homes/:id' => 'home#show', as: 'home'
end
