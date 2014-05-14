Rails.application.routes.draw do

  resources :td_fgame_team_riders

  resources :td_fgame_teams

  resources :posts do
    resources :comments
   end  
  
  resources :comments
   
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
  
  root 'pages#index'
end
