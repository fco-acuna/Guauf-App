Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resource :user, only: [:show, :edit, :update] do
    delete 'delete_avatar', on: :member
  end
  get '/mi_perfil', to: 'users#show', as: 'mi_perfil'

end
