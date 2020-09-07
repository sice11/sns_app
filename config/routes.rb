Rails.application.routes.draw do

  # ユーザー
  get "users/new", to: "users#new", as: "users_new"
  post "users/create", to: "users#create", as: "users_create"
  get "users/new_freeword", to: "users#new_freeword", as: "users_new_freeword"

  get "users/index", to: "users#index", as: "users_index"

  get "users/edit/:id", to: "users#edit", as: "users_edit"
  patch "users/update/:id", to: "users#update", as: "users_update"


  get "users/show/:id", to: "users#show", as: "users_show"

  # トップページ
  root "homes#top"

  get "/login_top", to: "homes#top_login", as: "longin_top"

end
