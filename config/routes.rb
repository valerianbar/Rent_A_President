Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :presidents, only: [:index, :show]

  namespace :owner do
    resources :presidents, only: [:new, :create]
    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
    resource :dashboards, only: [:show]
  end

  resources :bookings, only: [:create]
end
