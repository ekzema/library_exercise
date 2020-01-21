Rails.application.routes.draw do
  resources :comments
  root :to => 'books#index'

  resources :users
  resources :histories
  resources :books

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

end
