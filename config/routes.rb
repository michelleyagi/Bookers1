Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book_show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book_edit'
  post 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
