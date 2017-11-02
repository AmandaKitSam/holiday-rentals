Rails.application.routes.draw do
  root :to => 'pages#home'

  devise_for :users,
              path: '',
              path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks'}

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

  # From reservations_controller def your_trips, your_reservations:
  get '/your_trips' => 'reservations#your_trips'
  get '/your_reservations' => 'reservations#your_reservations'

  get 'search' => 'pages#search'

  resources :reservations, only: [:approve, :decline] do
    member do
      post '/approve' => 'reservations#approve'
      post '/decline' => 'reservations#decline'
    end
  end

  get '/host_calendar' => 'calendars#host'
end
