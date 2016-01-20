Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  get '/posts/:id', to: 'posts#show', as: :post
  post '/posts', to: 'posts#create'
  get '/posts/:id/edit', to: 'posts#edit', as: :edit_post
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  get '/comments', to: 'comments#index'
  get '/posts/:id/new', to: 'comments#new'
  get '/comments/:id', to: 'comments#show', as: :comment
  post '/comments', to: 'comments#create'
  get '/comments/:id/edit', to: 'comments#edit', as: :edit_comment
  patch '/comments/:id', to: 'comments#update'
  delete '/comments/:id', to: 'comments#destroy'
  delete '/comments', to: 'posts#destroy'
end

