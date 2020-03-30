Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#top'
  resources :books, only:[:new, :create, :show, :index, :destroy]
  resources :users, only:[:show, :index, :edit]
end
