Rails.application.routes.draw do
  get 'notifications/index'
  get 'notifications/new'
  get 'notifications/create'
  get 'roles/index'
  get 'roles/new'
  get 'roles/create'
  get 'dummies/index'
  get 'dummies/new'
  get 'dummies/create'
  # get 'bookings/index'
  # get 'bookings/new'
  # get 'bookings/create'
   #get 'events/index'
   #get 'events/new'
   #get 'events/create'
   #get 'locations/index'
   #get 'locations/new'
   #get 'locations/create'
  # get 'cities/index'
  # get 'cities/new'
  # get 'cities/create'
  # get 'categories/index'
  # get 'categories/new'
  # get 'categories/create'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bookings do
    put 'confirm'
    put 'cancle'
    end
  end
  resources  :locations , :categories , :cities , :events ,:dummies , :roles, :notifications
  # Defines the root path route ("/")
  #  root "articles#index"
   root to: "dummies#index"
   get "/bookings", to: "bookings#index", as: "bookings"
   get "/bookings/show", to: "bookings#show", as: "bookings_show"
  
  
  #  root "categories#index"
  #  root "users#index"
  #  root "categories#index"
end 
