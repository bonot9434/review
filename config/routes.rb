Rails.application.routes.draw do
  devise_for :users

  resources :users do
    member do
      get :favorites
    end
  end

  resources :posts do
    resource:favorites,only:[:create,:destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
