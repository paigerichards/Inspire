Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # path to profile/new after sign up

  #NOTE: devise defaults to root_path after sign_up/sign_in
  # (however you can customise this by editing devise sign_in methods)

  resources :profiles
  # path to subscription after profile/new


  resources :competitions
  resources :jobs
  resources :posts

  # since we never save the database,
  # we only need these two routes to get a stripe subscription happending
  resources :subscribers, only: [:new, :create]

  root 'posts#index'

end
