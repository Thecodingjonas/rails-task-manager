Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'

  get '/task/new', to: 'tasks#new', as: 'task_new'

  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  patch '/tasks/:id', to: 'tasks#update', as: 'task_update'

  get '/tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'

  delete '/tasks/:id', to: 'tasks#destroy'
end
