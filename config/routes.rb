Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only:[:new, :create, :show, :index, :destroy, :edit, :update] do
    resource :favorites, only:[:create, :destroy]
  end

  delete 'books/:book_id/book_comments/:id', to: 'book_comments#destroy', as: 'book_book_comments'
  post 'books/:book_id/book_comments/:id', to: 'book_comments#create'

  resources :users, only:[:show, :index, :edit, :update]
end
