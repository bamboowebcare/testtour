Rails.application.routes.draw do

 devise_for :users
  resources :users do
end
  
 resources :users do
  	resources :teams
  end

  resources :teams


  resources :poules
  
  resources :poules do
  	resources :teams
  end


  resources :comments

  resources :countries do
   resources :riders
  end

  resources :categories do
  	resources :posts
  end

  resources :posts do
    resources :comments
   end  
  
  resources :users do
  	resources :comments
  end
 
  resources :cycling_teams do 
  	resources :riders
  end	

  get 'pages/index'
  get 'pages/yellow'
  get 'pages/green'
  get 'pages/white'
  get 'pages/polka'
  
  root 'pages#index'
end
