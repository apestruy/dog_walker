Rails.application.routes.draw do

 # Owner Routes
  get "/owners", to: "owners#index", as: "owners"
  get "/owners/new", to: "owners#new", as: "new_owner"
  get "/owners/:id", to: "owners#show", as: "owner"
  post "/owners", to: "owners#create"
  get "/owners/:id/edit", to: "owners#edit", as: "edit_owner" 
  patch "/owners/:id", to: "owners#update"
  delete "/owners/:id", to: "owners#delete"

 # Dog Routes
 get "/dogs", to: "dogs#index", as: "dogs"
 get "/dogs/new", to: "dogs#new", as: "new_dog"
 get "/dogs/:id", to: "dogs#show", as: "dog"
 post "/dogs", to: "dogs#create"
 get "/dogs/:id/edit", to: "dogs#edit", as: "edit_dog" 
 patch "/dogs/:id", to: "dogs#update"
 delete "/dogs/:id", to: "dogs#delete"

 # Walker Routes
 get "/walkers", to: "walkers#index", as: "walkers"
 get "/walkers/new", to: "walkers#new", as: "new_walker"
 get "/walkers/:id", to: "walkers#show", as: "walker"
 post "/walkers", to: "walkers#create"
 get "/walkers/:id/edit", to: "walkers#edit", as: "edit_walker" 
 patch "/walkers/:id", to: "walkers#update"
 delete "/walkers/:id", to: "walkers#delete"

 #Reservation Routes
 get "/reservations", to: "reservations#index", as: "reservations"
 get "/reservations/new", to: "reservations#new", as: "new_reservation"
 post "/reservations", to: "reservations#create"
 get "/reservations/:id/edit", to: "reservations#edit", as: "edit_reservation" 
 patch "/reservations/:id", to: "reservations#update"
 delete "/reservations/:id", to: "reservations#delete"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
