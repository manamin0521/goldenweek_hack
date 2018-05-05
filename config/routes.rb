Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  resources :sessions
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy', :as => :logout
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
