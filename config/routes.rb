Rails.application.routes.draw do
  get 'public/recipes'
  get 'public_recipes', to: 'public_recipes#index'
  devise_for :users
  root 'foods#index'

  
  resources :recipes, only: [:index, :new, :show, :create, :destroy] do
    resources :recipe_foods, only: [:create, :destroy]
  end
  
  resources :foods, only: [:index, :new, :create, :destroy]

  resources :recipe_foods, only: %i[edit update destroy create]
end
