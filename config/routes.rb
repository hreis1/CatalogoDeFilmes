Rails.application.routes.draw do
  root 'movies#index'
  resources :genres, only: [:new, :create, :index, :show, :edit, :update]
  resources :directors, only: [:new, :create, :index, :show, :edit, :update]
  resources :movies, only: [:new, :create, :show, :edit, :update]
end
