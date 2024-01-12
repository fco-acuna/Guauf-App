Rails.application.routes.draw do
    devise_for :users
    root to: "pages#home"


    resources :walkers do
      resources :services, only: [:new, :create]
    end
    resources :services, except: [:new, :create] do
      resources :bookings, only: [:new, :create]
    end

  resources :dogs

  get '/mi_perfil', to: 'users#show', as: 'mi_perfil'
  delete 'delete_avatar', to: 'users#delete_avatar', as: :delete_avatar
end

# esto estaba generando conflictos

#   resources :walkers, only: [:index]
#   resources :walkers, only: [:show, :new, :create, :edit, :update, :destroy] do
#   resources :services, only: [:new, :create]
#   get 'walkers/new', to: 'walkers#new', as: 'new_walker'
#   get "services", to: "services#index"
#   resources :services
#   end
# end
