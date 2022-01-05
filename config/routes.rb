Rails.application.routes.draw do
  resources :foods, only: %i[index new create show]
  devise_for :users

  # root to: "users#index"
end
