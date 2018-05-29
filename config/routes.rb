Rails.application.routes.draw do
  root 'posts#index'
  
  get 'posts/index'

  get 'posts/new'

  post 'posts/create'

  get 'posts/delete'
end
