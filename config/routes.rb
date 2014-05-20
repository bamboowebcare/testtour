Rails.application.routes.draw do

  resources :countries
  resources :riders

  resources :posts do
    resources :comments
   end  
  
  resources :comments
   
devise_for :users
  resources :users do
    resources :poules 
  	resources :tour_teams do
	  	resources :tour_teams_riders
	 end 
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
