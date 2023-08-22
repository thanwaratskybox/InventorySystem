Rails.application.routes.draw do

  # root "articles#index"

  get 'recordings/index'

  get 'equipments/index'
  get 'equipments/show',  to:  "equiptments#show"

  # get 'equipments/new'
  # get 'equipments/create'
  # get 'equipments/update'
  # get 'equipments/destroy'
  
  # get "/employees", to: "employees#index"
  # get "/employees/:id", to: "employees#show"
  # get "/employees/new", to: "employees#new", as: :new_employee
  # post "/employees", to: "employees#create"
  # get "/employees/:id/edit", to: "employees#edit", as: :edit_employee
  # put "/employees", to: "employees#update"
  resources :employees
  # put "/employees/:id/delete", to: "employees#delete"
end