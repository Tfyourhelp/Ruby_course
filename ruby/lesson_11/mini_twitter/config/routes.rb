Rails.application.routes.draw do
  get 'user/index'
  get 'user/update'
  get 'static_pages/home'
  get 'static_pages/help'
  resources :products
  resources :user # trả về /users
  # resource :user   # trả về /user

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# path là relative
# url là tuyệt đối
end
