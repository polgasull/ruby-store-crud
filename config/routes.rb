Rails.application.routes.draw do

  get '/products', to: 'products#index', as: 'products'
  get '/products/new', to: 'products#new', as: 'products_new'
  post '/products', to: 'products#create', as: 'product_create'
  get '/products/:id/edit', to: 'products#edit', as: 'product_edit'
  # resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
