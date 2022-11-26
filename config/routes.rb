Rails.application.routes.draw do
  
  root 'home#index'
  resources :entries

  get '/' => 'home#index', as: 'home'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/articles' => 'articles#index'
  # get 'articles/new' => 'articles#new', as: 'new_article'
  # post '/articles' => 'articles#create', as: 'create_article' 

end
