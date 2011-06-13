SampleApp::Application.routes.draw do 
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,   :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :relationships, :only => [:create, :destroy]
  
  get "sessions/new"

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  
  #test: match '/home',    :to => 'pages#home'

  root :to => "pages#home"

end
