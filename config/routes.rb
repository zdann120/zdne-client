Rails.application.routes.draw do
  resources :change_requests
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
