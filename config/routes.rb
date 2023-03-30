Rails.application.routes.draw do
  get '/homes' => 'home#index', as:'homes'
  get '/homes/new' => 'home#new', as: 'new_blog'
  post 'homes' => 'home#create'
  get '/homes/:id' => 'home#show', as: 'home'
  delete 'homes/:id' => 'home#destroy', as: 'delete_home'

end
