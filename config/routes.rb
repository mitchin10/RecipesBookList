Rails.application.routes.draw do
  root 'family_recipes#index'

  resources :family_recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
