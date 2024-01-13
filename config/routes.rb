Rails.application.routes.draw do
    devise_for :users
    root to: "pages#home"


    resources :walkers
    resources :services do
      resources :bookings, only: [:new, :create]
    end

  resources :dogs

  get '/mi_perfil', to: 'users#show', as: 'mi_perfil'
  delete 'delete_avatar', to: 'users#delete_avatar', as: :delete_avatar
end
