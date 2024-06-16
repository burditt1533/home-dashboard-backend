Rails.application.routes.draw do
  resources :songs
  resources :tasks
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/rooms" => "rooms#index"
  get "/purge_tasks" => "tasks#purge_for_stale_tasks"
  get "/song_titles" => "songs#song_titles"

  # Defines the root path route ("/")
  # root "posts#index"
end
