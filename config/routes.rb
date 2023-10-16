Rails.application.routes.draw do
  root 'home#index'

  resources :genres, only: [:new, :create, :index, :show, :edit, :update]
  resources :directors, only: [:new, :create, :index, :show, :edit, :update]
  
  resources :movies, only: [:new, :create, :show, :edit, :update] do
    patch :release, on: :member
  end

end