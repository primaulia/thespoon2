Rails.application.routes.draw do
  # GET REQUEST to http://localhost:3000/pages/contact
  # get 'pages/contact'

  # VERB PATH to: CONTROLLER#ACTION
  # localhost:3000/restaurants
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants', to: 'restaurants#index'
  # http://localhost:3000/contact
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
