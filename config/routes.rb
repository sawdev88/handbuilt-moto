Rails.application.routes.draw do
  devise_for :users
  resources :shop_todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/dashboard' => 'dashboard#index'
  get '/dashboard/shop-todo' => 'dashboard#shop_todo'
end
