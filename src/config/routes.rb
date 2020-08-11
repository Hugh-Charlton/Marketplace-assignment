Rails.application.routes.draw do

  get "pages/home"
  get "pages/Contact"
  get "profiles/Register"
  get "profiles/Login"

  resources :profiles
  resources :pages

  # listings routes
  get "listings", to: "listings#index", as: "listings"
  post "listings", to: "listings#create"
  get "listings/new", to: "listings#new", as: "new_listing"
  get "listings/:id", to: "listings#show", as: "listing"
  put "listings/id", to: "listings#update"
  patch "listings/:id", to: "listings#update"
  delete "listings/:id", to: "listings#destroy"
  get "listings/:id/edit", to: "listings#edit", as: "edit_listing"

  get "/", to: "pages#home", as: "root"

  # any path that is not defined in app
  get "*path", to: "pages#not_found"

  # generates routes REST api for listing pages
  # resources :listings

  # devise_for :users, controllers: { registrations: "registrations"}
  # as :user do
  #   get '/' => 'devise/registrations#new'
  # end
  # mount ActionCable.server => "/cable"
  # resources :grid

end
