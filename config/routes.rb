Rails.application.routes.draw do

  get "users/new", to: "users#new", as: "users_new"
  get "users/new_freeword", to: "users#new_freeword", as: "users_new_freeword"

  get "users/index", to: "users#index", as: "users_index"

  get "users/edit", to: "users#edit", as: "users_edit"

  get "users/show", to: "users#show", as: "users_show"

  root "homes#top"

  get "/login_top", to: "homes#top_login", as: "longin_top"

end
