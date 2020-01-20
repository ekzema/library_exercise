Rails.application.routes.draw do
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
