Rails.application.routes.draw do
  devise_for :users
  resources :show_times do
    resources :orders, only: %i[new create show]
  end
  resources :movies
  resources :customers
  get "order_history", to: "orders#index"

  root "movies#index"
end
