Rails.application.routes.draw do
  get 'uraposts/index'
  get 'uraposts/show/:id' => 'uraposts#show', as: :uraposts_show
  post 'uraposts/create' => 'uraposts#create'
  delete 'uraposts/delete/:id' => 'uraposts#delete', as: :urapost_delete

  post 'uracomments/create' => 'uracomment#create', as: :uracomment_create

  get 'tezimas/index'
  get 'tezimas/show/:id' => 'tezimas#show', as: :tezimas_show
  post 'tezimas/create' => 'tezimas#create'
  delete 'tezimas/delete/:id' => 'tezimas#delete', as: :tezima_delete
  resources :youtubes
  root :to => 'posts#index'
  get 'posts/index'
  get 'posts/show:id' => 'posts#show', as: :posts_show
  post 'posts/create' => 'posts#create'
  delete 'posts/delete/:id' => 'posts#delete', as: :post_delete
  post 'comments/create' => 'comment#create', as: :comment_create
  
end
