Rails.application.routes.draw do
  devise_for :users
  resources :show_times
  resources :orders
  resources :movies
  resources :customers

  root "movies#index"
end
