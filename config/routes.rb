Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'

  resources :movies, only: [:index] do
    collection do
      post :search
    end
  end
end
