Rails.application.routes.draw do
  resources :youtubes

  root :to => 'posts#index'
  get 'posts/index'
  get 'posts/show:id' => 'posts#show', as: :posts_show
  post 'posts/create' => 'posts#create'
  delete 'posts/delete/:id' => 'posts#delete', as: :post_delete
  post 'comments/create' => 'comment#create', as: :comment_create
  
end
