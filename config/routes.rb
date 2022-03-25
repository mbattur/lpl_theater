Rails.application.routes.draw do
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  devise_for :users
  resources :show_times, only: %i[new create] do
    resources :orders, only: %i[new create show]
  end
  resources :movies, only: %i[index]
  resources :customers, only: %i[index]
  get "orders", to: "orders#index"
  get "dashboard", to: "orders#dashboard"

  root "movies#index"
end
