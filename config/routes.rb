Rails.application.routes.draw do
  resources :comments, only: [:show, :create, :destroy]
  resources :blogposts, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
