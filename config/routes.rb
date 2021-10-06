Rails.application.routes.draw do
  
  resources :users do
    resources :blogposts
  end
  resources :blogposts do
    resources :comments
end

resources :users do
  resources :blogposts do
    resources :comments
  end
end
  resources :users, only: [:index, :show, :create, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
