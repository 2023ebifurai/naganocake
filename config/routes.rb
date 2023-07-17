Rails.application.routes.draw do
  devise_for :users
  #devise_for :admins

  namespace :admin do
    resources :products, only: [:new, :create, :index, :show, :edit, :update]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
