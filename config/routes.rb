Rails.application.routes.draw do

  # ログイン
  # get 'sessions/new'
  get "/login", to: "sessions#new", as: "login_form"
  post "/login", to: "sessions#create", as: "login"
  post "/logout", to: "sessions#destroy", as: "logout"

  # 投稿
  get "posts/new", to: "posts#new", as: "posts_new"
  post "posts/create", to: "posts#create", as: "posts_create"

  get "posts/index", to: "posts#index", as: "posts_index"

  get "posts/show/:id", to: "posts#show", as: "posts_show"
  patch "posts/update/:id", to: "posts#update", as: "posts_update"

  get "posts/edit/:id", to:"posts#edit", as: "posts_edit"

  patch "posts/destroy/:id", to: "posts#destroy", as: "posts_destroy" 

  # ユーザー
  get "users/new", to: "users#new", as: "users_new"
  post "users/create", to: "users#create", as: "users_create"
  get "users/new_freeword", to: "users#new_freeword", as: "users_new_freeword"

  get "users/index", to: "users#index", as: "users_index"

  get "users/show/:id", to: "users#show", as: "users_show"

  get "users/edit/:id", to: "users#edit", as: "users_edit"
  patch "users/update/:id", to: "users#update", as: "users_update"

  patch "users/delete/:id", to: "users#delete", as: "users_delete"

  # トップページ
  root "homes#top"

  get "/login_top", to: "homes#top_login", as: "longin_top"

end
