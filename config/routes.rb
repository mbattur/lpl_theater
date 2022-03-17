Rails.application.routes.draw do
  resources :show_times
  resources :orders
  resources :movies
  resources :customers

  root "show_times#index"
end
