Rails.application.routes.draw do
  devise_for :users, skip: :new
  devise_scope :user do
    get 'new' => 'devise/sessions#new'
    post 'create' => 'devise/sessions#create'
  end

  root to: "musics#index"
  resources :musics, only: [:new]
  resources :users, only: [:new, :create, :show, :update]
  resources :groups, only: [:new, :create, :show]
end