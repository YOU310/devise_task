Rails.application.routes.draw do
  get 'users/show'
  # get 'games/index'
  # get 'games/new'
  # get 'games/creare'
  root to: "games#index"
  devise_for :users
  resources :games
  resource :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
