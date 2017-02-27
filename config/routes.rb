Rails.application.routes.draw do
  
  resources :articles

  # You can have the root of your site routed with "root"
  root 'welcome#index'

 
end
