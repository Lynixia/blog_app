Rails.application.routes.draw do
    #auto generated Home page.
  get 'static_pages/home'
  
#auto generated help page.
  get 'static_pages/help'
  
  #auto generated About Page
  get 'static_pages/about'

    root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
