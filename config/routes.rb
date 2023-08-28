Rails.application.routes.draw do
  
  # get "/employees", to: "employees#index"
  # get "/employees/:id", to: "employees#show"
  # get "/employees/new", to: "employees#new", as: :new_employee
  # post "/employees", to: "employees#create"
  # get "/employees/:id/edit", to: "employees#edit", as: :edit_employee
  # put "/employees", to: "employees#update"
  # put "/employees/:id/delete", to: "employees#delete"
  resources :employees
  
  # get "/equipments", to: "equipments#index"
  # get "/equipments/show",  to:  "equiptments#show"
  # get "/equipments/new", to: "equiptments#new", as: :new_equipment
  # post "/equiptments", to: "equiptments#create"
  # get 'equipments/create'
  # get 'equipments/update'
  # get 'equipments/destroy'
  # get "/equipments", to: "equipments#index"
  # get "/equipments/:id", to: "equipments#show"
  # get "/equipments/new", to: "equipments#new", as: :new_equipment
  # post "/equipments", to: "equipments#create"
  resources :equipments

  get "/recordings", to: "recordings#index"
  # get "/recordings/:id", to: "recordings#show"
  get "/recordings/:id/edit", to: "recordings#edit", as: :edit_recording
  patch "/recordings/:id", to: "recordings#update", as: :update_recording

  get "/recordings/new", to: "recordings#new", as: :new_recording
  post "/recordings", to: "recordings#create"
  # get "/recordings/delete/:id", to: "recordings#destroy", as: :delete_recording
  # delete "/recordings/delete/:id", to: "recordings#destroy", as: :delete_recording
  delete "/recordings/:id", to: "recordings#destroy", as: :delete_recording
  # resources  :recordings
  
end