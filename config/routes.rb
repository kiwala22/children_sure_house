Rails.application.routes.draw do
  resources :contact_us, only: %i[create new index]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  root 'home#index'
  get "news_feed/:id", to: "home#news_feed"
  get "projects", to: "home#projects"
end
