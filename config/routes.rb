Rails.application.routes.draw do
  root to: 'pages#index'
  resources :events, only: [:create]
  resources :users, only: [:show, :create]
end
