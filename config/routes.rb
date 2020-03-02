Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :users, only: :show
  resources :posts, only: :index
  resources :reviews, only: [:show, :new, :create]
  resources :categorys, only: :index
end
