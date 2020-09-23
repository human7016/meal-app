Rails.application.routes.draw do
  devise_for :users
  root to: 'cuisines#index'
  resources :cuisines, only: [:index] do
    collection do
      get 'search'
    end
  end
end
