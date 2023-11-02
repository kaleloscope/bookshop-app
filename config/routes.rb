Rails.application.routes.draw do
  root 'books#index'
  resources :books

  # get 'welcome/index'
  # get 'welcome/new'
  # get 'welcome/show'
  # get 'welcome/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
