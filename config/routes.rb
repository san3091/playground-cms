Rails.application.routes.draw do

  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show', as: 'post'

  root to: 'posts#index' 
  #Casein routes
  namespace :casein do
    resources :posts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
