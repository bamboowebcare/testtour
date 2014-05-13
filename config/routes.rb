Rails.application.routes.draw do

  resources :posts do
    resources :comments
   end  
   
devise_for :users
  resources :users

resources :cycling_teams do 
  		resources :riders
  	end	

  get 'pages/index'
  get 'pages/yellow'
  get 'pages/green'
  get 'pages/white'
  get 'pages/polka'
  get 'pages/preview'

  
  root 'pages#index'
end
