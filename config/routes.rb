Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :yoga_classes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :teachers, only: [:show] do
    resources :reviews, only: [:create]
  end

  resources :yoga_studios, only: [:show] do
    resources :reviews, only: [:create]
  end

  resources :reviews, only: [:destroy]
  resources :bookings, only: [:show]

  # Path for confirmation page after the booking was successful
  get "bookings/:id/confirmation", to: "bookings#confirmation", as: :confirmation
end
