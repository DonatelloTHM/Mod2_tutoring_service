Rails.application.routes.draw do
  
  resources :tutors
  resources :users

  root 'home#index'

  get '/login_tutor', to: 'tutor_sessions#new',as: :login_tutor
  post '/login_tutor', to: 'tutor_sessions#create'
  delete 'logout', to: 'tutor_sessions#destroy', as: 'logout'

  get '/login_user', to: 'user_sessions#new',as: :login_user
  post '/login_user', to: 'user_sessions#create'
  post "/schedule_session", to: "tutors#schedule_session", as: :schedule_session
  post "/cancel_session",to: "tutors#cancel_session", as: :cancel_session
  delete 'logout', to: 'user_sessions#destroy', as: 'user_logout'
end
