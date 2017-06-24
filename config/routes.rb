Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :change_requests
    resources :websites

    root to: "users#index"
  end

  resources :change_requests
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
