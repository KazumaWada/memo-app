Rails.application.routes.draw do
  # get 'posts/show'
  # # get 'posts/index'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/delete'
  root 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
