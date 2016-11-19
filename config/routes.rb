Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'site#home'
get '/users/:id/index', to: 'users#index'

get '/users/:user_id/products/:id/show', to: 'products#show'

get "/users/:id/show", to: 'users#show'


get '/users/new', to:'users#new'
post '/users', to: 'users#create'


get '/users/sessions', to: 'sessions#new'
post '/users', to: 'sessions#create'



get '/users/:user_id/products/new', to: 'products#new'
post '/users/:user_id/products', to: 'products#create', as: :user_products

delete '/users/:user_id/products/:id/destroy', to: 'products#destroy'

get '/users/:user_id/products/:id/bids/new', to: 'bids#new'
post '/users/:user_id/products/:id/bids', to: 'bids#create', as: :user_bid

end
