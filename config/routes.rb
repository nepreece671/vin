#---
# Based on http://www.pragmaticprogrammer.com/titles/rails4 for information.
#---
require './app/store'
Vinylla::Application.routes.draw do
  resources :pages

  resources :user_sessions

  match 'store' => StoreApp.new
  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items    
    resources :carts
    resources :products do
      get :who_bought, :on => :member
    end
    root :to => 'store#index', :as => 'store'
  end
end
