Rails.application.routes.draw do
  resources :feedbacks
  resources :products
  resources :archives
  resources :trades
  resources :tradeservices
  resources :sections
  resources :services
  resources :pms
  resources :tradeplans
  resources :plans
  resources :fxsignals
  resources :features
  resources :faqs
  resources :withdraws
  resources :deposits
  resources :boards
  resources :blogs
  resources :banners
  resources :accounts
  resources :abouttrades
  resources :abouts
  resources :headers
  resources :contacts
  devise_for :users

    authenticated :user do
      root 'accounts#index', as: "authenticated_root"
    end
      root "welcomes#index"  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
