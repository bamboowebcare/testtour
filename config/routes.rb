Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/yellow'
  get 'pages/green'
  get 'pages/white'
  get 'pages/polka'
  get 'pages/preview'

  devise_for :users
  resources :users
  
  root 'pages#index'
end
