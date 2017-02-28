Rails.application.routes.draw do


  resources :park_summaries
  root        'home#index'
  
  devise_for :users

end
