Rails.application.routes.draw do
  get "/" => "lists#new"
  root to: 'home#top'
  get 'lists/new'
  post 'books' => 'lists#create'   #ここを追記します
  get 'books' => 'lists#index'
  get 'lists/index'
  get 'show' => 'lists#show'
 
  get 'homes/top'
   
   # .../lists/1 や .../lists/3 に該当する
  
  get 'books/:id' => 'lists#show', as: 'book'
  get 'books/:id/edit' => 'lists#edit', as: 'edit_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch 'books/:id' => 'lists#update', as: 'update_list'
  delete 'books/:id' => 'lists#destroy', as: 'destroy_list'
end
