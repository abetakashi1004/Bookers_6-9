Rails.application.routes.draw do
  get 'users/show'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root to: 'home#index'
   root 'users#show'

  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :index, :edit, :update]

  get 'home/about', to: 'home#about'

end

