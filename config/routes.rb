Rails.application.routes.draw do

  resources :film_location_summaries
  resources :park_summaries

  root        'home#index'

  get 'map' =>  'home#map'

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }

end
