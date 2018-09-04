Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users, only: [:new, :create, :show]

  resources :categories, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :ideas, only: [:index, :new, :create, :show, :destroy, :edit, :update]
end
