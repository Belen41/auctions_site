Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'site#index'
get '/site/show/:id', to: 'site#show'

get '/users/new', to:'users#new'
post '/users', to: 'users#create'

get '/users/login', to: 'sessions#new'
post '/users', to: 'sessions#create'

get "/users/:id/show", to: 'users#show'

get '/users/:user_id/products/new', to: 'products#new'
post '/users/:user_id/products', to: 'products#create', as: :user_products

get '/users/:user_id/products/destroy', to: 'product#destroy'

end
