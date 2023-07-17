Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  #devise_for :admins
=======

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
>>>>>>> origin/develop

  namespace :admin do
    resources :products, only: [:new, :create, :index, :show, :edit, :update]
  end
<<<<<<< HEAD
=======
  scope module: :public do
    root "homes#top"
    get "/about" => "homes#about"
  end

  # devise_for :users
>>>>>>> origin/develop

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
