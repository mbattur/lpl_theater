Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :show_times do
    resources :orders, only: %i[new create show]
  end
  resources :movies
  resources :customers
  get "orders", to: "orders#index"
  get "dashboard", to: "orders#dashboard"

  root "movies#index"
end
