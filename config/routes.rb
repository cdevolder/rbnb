Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :locations , only: [ :show ]do
    resources :reviews, only: [:new, :create]
    resources :messages, only: [:new, :create]
  end

  resources :profils, except: [:index] do
    resources :recruteurs, only: [:show, :edit, :update, :new, :create]
    resources :developpeurs, except: [:index] do
      resources :skills, only: [:new, :create]
    end
  end
  resources :developpeurs, only: [:show] do
    resources :locations, only: [:new, :create]
  end

  resources :developpeurs, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
