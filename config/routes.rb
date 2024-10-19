Rails.application.routes.draw do
  devise_for :admins

  authenticated :admin do
    root to: 'admin#index', as: :admin
  end

  root 'home#index'

  namespace :admin do
    resources :orders
    resources :products do
      resources :stocks
    end
    resources :categories
  end

  resources :categories, only: [:show]
  resources :products, only: [:show]

  get 'cart' => 'carts#show'
  post 'checkout' => 'checkouts#create'
end
