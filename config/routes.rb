Rails.application.routes.draw do
  resources :recipe_foods
  # root 'public_recipes#index'

  devise_for :users
  
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:create, :destroy]
  end
end
