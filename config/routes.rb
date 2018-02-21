Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :performances, only: [ :index, :create, :update] do
    resources :bookings, only: [ :create, :update]
  end
  resources :users, only: [:show, :edit, :update]
  get "/dashboard", to: "users#dashboard", as: "dashboard"
  get "/performances/:id", to: "performances#show"
  patch "/dashboard", to: "bookings#update", as: "booking"
end
