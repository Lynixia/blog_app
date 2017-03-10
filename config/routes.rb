Rails.application.routes.draw do
  get 'users/new'

   root 'static_pages#home'
    #auto generated Home page.
  get '/home',  to: 'static_pages#home'
  
#auto generated help page.
  get '/help',  to: 'static_pages#help'
  
  #auto generated About Page
  get '/about',   to: 'static_pages#about'

#auto generate Contact Page
get '/contact',  to: 'static_pages#contact'

#auto generate new Users Page
get '/signup',   to: 'users#new'

post '/signup', to: 'users#create'

#How to display the user on the Page
resources :users
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
