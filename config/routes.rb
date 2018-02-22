Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :performances, only: [ :index, :create, :update] do
    resources :bookings, only: [:update]
  end
  resources :bookings, only: [ :create]
  resources :users, only: [:show, :edit, :update] do
    resources :photos, only: [:create]
  end
  resources :photos, only: [:destroy, :edit]
  get "/dashboard", to: "users#dashboard", as: "dashboard"
  patch "/dashboard", to: "bookings#update", as: "booking"
end
