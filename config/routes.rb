Rails.application.routes.draw do
    devise_for :users
    root to: "pages#home"
  
  
    resources :walkers do
      resources :services, only: [:new, :create]
    end
    resources :services, except: [:new, :create] do
      resources :bookings, only: [:new, :create]
    end
  devise_for :users
  root to: "pages#home"
  resources :dogs

  resource :user, only: [:show, :edit, :update] do
    delete 'delete_avatar', on: :member
  end
  get '/mi_perfil', to: 'users#show', as: 'mi_perfil'



  resources :walkers do
  # get "walkers", to: "walkers#index"
  resources :services, only: [:new, :create]
  end
  resources :services
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
