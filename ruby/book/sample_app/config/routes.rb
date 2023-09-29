Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'static_pages/home'
  get '/help', to: 'static_pages#help', as: 'help'      #  get 'static_pages/help'
  get '/about', to: 'static_pages#about'  #get 'static_pages/about' #This automatically creates a helper called static_pages_about_url
  get '/contact', to: 'static_pages#contact'            #get 'static_pages/contact'
  root "static_pages#home" 
  get '/signup', to: 'users#new'
   
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users # resource co nghia la bien :user theo REST principle (CRUD)
end
