Rails.application.routes.draw do
  
 devise_for :users
  resources :users do
end
 
  
  resources :users
  resources :riders
  resources :poules 
  resources :tour_teams_riders
  resources :comments

  
  resources :countries do
   resources :riders
  end

  resources :tour_teams do
	 resources :tour_teams_riders 	  
  end

  resources :tour_teams_riders do
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
