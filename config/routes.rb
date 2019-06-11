Rails.application.routes.draw do
  root 'family_recipes#index'

  devise_for :users
  resources :family_recipes do
    collection do
      get :my_recipe
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
