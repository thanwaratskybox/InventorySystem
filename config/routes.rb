Rails.application.routes.draw do
  get 'recordings/index'
  get 'equipments/index'
  get 'equipments/show',  to:  "equiptments#show"
  # get 'equipments/new'
  # get 'equipments/create'
  # get 'equipments/update'
  # get 'equipments/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/employees", to: "employees#index"
  get "/employees/:id", to: "employees#show"
  get "/employees/new", to: "employees#new"
  get "/employees/create", to: "employees#create"
end
