Rails.application.routes.draw do
  resources :comments
  root :to => 'books#index'

  resources :users
  resources :histories
  resources :books
  post 'books/take/:id', to: 'books#take', as: 'take_book'
  put 'books/return_book/:id', to: 'books#return_book', as: 'return_book'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

end
