Rails.application.routes.draw do
  root 'home#index'
  resources :generos, only: [:new, :create, :index, :show, :edit, :update]
end
