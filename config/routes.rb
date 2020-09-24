Rails.application.routes.draw do
  devise_for :users
  resources :toppages, only: :index
  root to: 'toppages#index'
  resources :cuisines, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
    end
  end
end
