Rails.application.routes.draw do

  
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'} do
  	resources :orders
  	end
  	
  get 'cart/index'

  resources :tutors

  resources :lessons

  resources :orders do
  	resources:orderlessons
  end

  resources :categories

root 'static_pages#home'

get '/about' => 'static_pages#about'

get '/lessons' => 'static_pages#lessons'

get '/tutors' => 'static_pages#tutors'

#get '/login' => 'user#login'

#get '/logout' => 'user#logout'

get '/cart', to: 'cart#index'
  
get '/cart/:id', to: 'cart#add'
  
get '/clearcart', to: 'cart#clearCart'
  
get '/cart/remove/:id' => 'cart#remove'
  
get '/cart/decrease/:id' => 'cart#decrease'
  
get '/cart/increase/:id' => 'cart#increase'
  
get '/checkout' => 'cart#createOrder'
  
get '/paid/:id' => 'static_pages#paid'
  
get '/users' => 'static_pages#users'
  
get '/upgrade/:id' => 'static_pages#upgrade'
  
get '/upgrade/:id' => 'static_pages#downgrade'
  
post '/search' => 'lessons#search'
  
get '/search' => 'static_pages#searchproducts'
  
get 'category/:title', to: 'static_pages#categories'
  
get '/bag/:id', to: 'cart#bag'
 # get 'static_pages/home'
 # get 'static_pages/tutors'
 # get 'static_pages/lessons'
 # get 'static_pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
