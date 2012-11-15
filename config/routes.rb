OctoLana::Application.routes.draw do  
  authenticated :user do
    root :to => 'home#auth'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  
end