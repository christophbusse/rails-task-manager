Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read all restaurants

  get 'tasks', to: 'tasks#index'
  # create one restaurant (2 requests)

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # update one restaurant

  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # delete one restaurant

  delete 'tasks/:id', to: 'tasks#destroy', as: :task_delete

  # read one restaurant

  get 'tasks/:id', to: 'tasks#show', as: :task
end
