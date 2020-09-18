Rails.application.routes.draw do
  devise_for :users
  root to: 'cuisines#index'
  resources :cuisines, only: [:index]
end
