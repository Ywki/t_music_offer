Rails.application.routes.draw do
  devise_for :users

  root to: "musics#index"
  resources :musics, only: [:new]
  resources :users, only: [:new, :create, :show, :update]
  resources :groups, only: [:new, :create, :show, :edit, :update]

end