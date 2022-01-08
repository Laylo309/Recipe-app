Rails.application.routes.draw do
  devise_for :users
  root 'public_recipes#index'

  resources :recipes, only: [:index, :new, :show, :create, :destroy] do
    resources :recipe_foods, only: [:create, :destroy]
  end
  
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipe_foods, only: %i[edit update destroy create]

  get 'general_shopping_list', to: 'general_shopping_lists#index', as: 'general_shopping_list'
end
