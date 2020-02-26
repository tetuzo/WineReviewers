Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:new, :create, :edit,  :update, :destroy]
  resources :posts, only: :index
  resources :reviews, only: :index
end
