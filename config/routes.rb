Rails.application.routes.draw do
  
  resources :teamriders
    
  devise_for :users
   resources :users do
  end
  
 resources :teams do 
  	resources :teamriders
  end	
  
  resources :poules
  resources :comments

  resources :cycling_teams do 
  	resources :riders
  end	

 resources :users do
  	resources :teams
  end

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
