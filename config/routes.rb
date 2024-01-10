Rails.application.routes.draw do
    devise_for :users
    root to: "pages#home"
  
  
    resources :walkers do
      resources :services, only: [:new, :create]
    end
    resources :services, except: [:new, :create] do
      resources :bookings, only: [:new, :create]
    end
end
