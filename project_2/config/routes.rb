Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "students#index"
=======
  root to: "sites#index" 

  get "/login", to: "sessions#new"
>>>>>>> bf24e511e3d5bb2dadbf49aa7a167a45b3f54d99

  resources :users

  resources :boards

  resources :sites
  
  get "/sign_up", to: "users#new", as: "sign_up"

<<<<<<< HEAD
  get "/login", to: "sessions#new" 
  
  post "/sessions", to: "sessions#create"
=======
  get "/logout", to: "sessions#destroy"
>>>>>>> bf24e511e3d5bb2dadbf49aa7a167a45b3f54d99

  post "/sessions", to: "sessions#create"
end

#  Prefix Verb   URI Pattern               Controller#Action
#     login GET    /login(.:format)          sessions#new
#      root GET    /                         students#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#   sign_up GET    /sign_up(.:format)        users#new
#  sessions POST   /sessions(.:format)       sessions#create
