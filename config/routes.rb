Rails.application.routes.draw do
  resources :surveys
  resources :posts
  resources :landing_page do 
   resources :home
  end 

root 'landing_page#home' 
end
