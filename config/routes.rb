Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read all restaurants

  get 'tasks', to: 'tasks#index'

  # read one restaurant

  get 'tasks/:id', to: 'tasks#show'

  # create one restaurant (2 requests)

  get 'tasks/new', to: 'tasks#new'
  get 'tasks', to: 'tasks#create'

  # update one restaurant

  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  # delete one restaurant

  delete 'tasks/:id', to: 'tasks#destroy'
end
