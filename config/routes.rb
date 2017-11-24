Rails.application.routes.draw do
  resources :surveys
  resources :posts
  resources :landing_page do
   resources :home
  end

  resources :users, only: :show
root 'landing_page#home'
end
