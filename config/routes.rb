Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :users, only: [:new]

  resources :categories, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :ideas, only: [:index, :new, :create, :show, :destroy, :edit, :update]
end
