Rails.application.routes.draw do

  get '/products', to: 'products#index', as: 'products'
  get '/products/new', to: 'products#new', as: 'products_new'
  post '/products', to: 'products#create', as: 'products_create'
  get '/products/:id', to: 'products#show', as: 'product_show'
  get '/products/:id/edit', to: 'products#edit', as: 'product_edit'
  patch '/products/:id', to: 'products#update', as: 'product_update'
  delete '/products/:id', to: 'products#delete', as: 'product_delete'
  # resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
