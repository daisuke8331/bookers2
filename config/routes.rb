Rails.application.routes.draw do

  root to: "homes#top" #ルートディレクトリ設定

  resources :users
  resources :books

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#記載があったrouting
#get 'users/show'
#get 'users/edit'
#get 'books/index'
#get 'books/show'
#get 'books/edit'
#get 'homes/top'
