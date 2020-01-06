Rails.application.routes.draw do
  devise_for :users

  root to: "musics#index"
  resources :users, only: [:index, :new, :create, :show, :update]
  resources :groups do
    resources :musics
  end
  
end