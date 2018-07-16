Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations"}

  get '/', to: 'home#index', as: 'home'

  get '/admin', to: 'admin#projects', as: 'admin_projects'
  get '/admin/new_project', to: 'admin#new_project', as: 'admin_new_project'
  post '/admin', to: 'admin#create_project', as: 'admin_create_project'
  get '/admin/:id', to: 'admin#show_project', as: 'admin_show_project'
  get '/admin/:id/edit_project', to: 'admin#edit_project', as: 'admin_edit_project'
  patch '/admin/:id', to: 'admin#update_project', as: 'admin_update_project'
  delete '/admin/:id', to: 'admin#delete_project', as: 'admin_delete_project'

  get '/projects', to: 'projects#index', as: "projects"
  get '/projects/:id', to: 'projects#show', as: 'show_project'
  # resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
