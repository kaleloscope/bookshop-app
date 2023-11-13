Rails.application.routes.draw do
  get 'jobs/index'
  root 'books#index'
  # resources :books
  resources :authors, only: %i[index create new show] do
    resources :books, only: [:index, :new, :create]
  end
  resources :books, only: [:show, :edit, :update, :destroy]
  resources :jobs, only: [:create]

  # get 'welcome/index'
  # get 'welcome/new'
  # get 'welcome/show'
  # get 'welcome/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
