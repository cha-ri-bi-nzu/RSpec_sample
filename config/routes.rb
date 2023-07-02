Rails.application.routes.draw do
  get 'pitures/index'
  get 'pitures/new'
  get 'pitures/create'
  get 'pitures/confirm'
  get 'pitures/show'
  get 'pitures/edit'
  get 'pitures/update'
  get 'pitures/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
