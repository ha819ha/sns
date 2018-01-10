Rails.application.routes.draw do
  resources :users, :posts
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'users/new'
  root :to => 'posts#index'
end