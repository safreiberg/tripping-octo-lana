OctoLana::Application.routes.draw do  
  get "healths/index"

  get "healths/show"

  get "healths/edit"

  get "healths/update"

  get "healths/destroy"

  get "healths/new"

  get "healths/create"

  get "workouts/index"

  get "workouts/show"

  get "workouts/edit"

  get "workouts/update"

  get "workouts/destroy"

  get "workouts/new"

  get "workouts/create"

  get "feelings/index"

  get "feelings/show"

  get "feelings/edit"

  get "feelings/update"

  get "feelings/destroy"

  get "feelings/new"

  get "feelings/create"

  get "events/index"

  get "events/show"

  get "events/edit"

  get "events/update"

  get "events/destroy"

  get "events/new"

  get "events/create"

  get "sleeps/index"

  get "sleeps/show"

  get "sleeps/edit"

  get "sleeps/update"

  get "sleeps/destroy"

  get "sleeps/new"

  get "sleeps/create"

  authenticated :user do
    root :to => 'home#auth'
  end
  
  root :to => "home#index"
  
  devise_for :users
  resources :users
  resources :foods
end