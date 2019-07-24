Rails.application.routes.draw do
  root 'leader_boards#index'
  resources :games
  resources :players
  # post 'participants/create', :to => 'participant#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
