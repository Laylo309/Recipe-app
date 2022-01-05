Rails.application.routes.draw do
  devise_for :users
  root 'recipes#index'

  
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:create, :destroy]
  end
  
  resources :foods, only: [:index, :new, :create, :destroy]

  resources :recipe_foods, only: %i[edit update destroy create]
end
