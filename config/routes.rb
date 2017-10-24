Rails.application.routes.draw do
  root :to => 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  resources :rooms, except: [:edit] do
    member do
      get 'listing'
      get 'pricing'
      get 'description'
      get 'photo_upload'
      get 'amenities'
      get 'location'
      get 'preload'
      get 'preview'
    end
  resources :photos, only: [:create, :destroy]
  resources :reservations, only: [:create]
  end

  # From reservations_controller def your_trips:
  get '/your_trips' => 'reservations#your_trips'
end
