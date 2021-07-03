Rails.application.routes.draw do
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read
  # get "tasks", to: "tasks#index"
  # get "tasks/new", to: "tasks#new"
  # # Create
  # get "tasks/:id", to: "tasks#show", as: :task
  # post "tasks", to: "tasks#create"

  # # # Update
  # # # GET the HTML form (pre-filled with restaurant attributes) for editing = 1 request
  # # PATCH the parameters to update an existing restaurant = 1 request
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update"

  # # Delete
  # delete "tasks/:id", to: "tasks#destroy"

end
