Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :performances, only: [ :index, :create, :update] do
    resources :bookings, only: [ :create, :update]
    patch "/dashboard", to: "bookings#update", as: "dashboard_update"
  end
  resources :users, only: [:show, :edit, :update]
  get "/dashboard", to: "users#dashboard", as: "dashboard"
end
