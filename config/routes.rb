Rails.application.routes.draw do
  root 'announcements#index'

  resources :announcements, only: :create

  resources :photos, only: [:index, :show, :create]

  resources :posts, only: [:index, :show, :create] do
    resources :comments, only: :create
  end

  resources :quests, only: [:index, :create] do
    patch :complete, on: :member
  end

  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: :update
end
