Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # read all the tasks
  get "/tasks", to: "tasks#index", as: :tasks

  # create
  get "/tasks/new", to: "tasks#new", as: :new
  post "/tasks", to: "tasks#create", as: :create

  # read one
  get "/tasks/:id", to: "tasks#show", as: :task

  # update
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id", to: "tasks#update"

  # delete
  delete "/tasks/:id", to: "tasks#destroy"
end
