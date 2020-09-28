Rails.application.routes.draw do

  # フリーワード
  get "freewords/new", to: "freewords#new", as: "freewords_new"
  post "freewords/create", to: "freewords#create", as: "freewords_create"

  get "freewords/show/:id", to: "freewords#show", as: "freewords_show"

  get "freewords/edit/:id", to: "freewords#edit", as: "freewords_edit"
  patch "freewords/update/:id", to: "freewords#update", as: "freewords_update"

  # ログイン
  # get 'sessions/new'
  get "/login", to: "sessions#new", as: "login_form"
  post "/login", to: "sessions#create", as: "login"
  delete "/logout", to: "sessions#destroy", as: "logout"

  # 投稿
  get "posts/new", to: "posts#new", as: "posts_new"
  post "posts/create", to: "posts#create", as: "posts_create"

  get "posts/index", to: "posts#index", as: "posts_index"

  get "posts/show/:id", to: "posts#show", as: "posts_show"
  patch "posts/update/:id", to: "posts#update", as: "posts_update"

  get "posts/edit/:id", to:"posts#edit", as: "posts_edit"

  patch "posts/delete/:id", to: "posts#delete", as: "posts_delete" 

  # ユーザー
  get "users/new", to: "users#new", as: "users_new"
  post "users/create", to: "users#create", as: "users_create"

  get "users/index", to: "users#index", as: "users_index"

  get "users/show/:id", to: "users#show", as: "users_show"

  get "users/edit/:id", to: "users#edit", as: "users_edit"
  patch "users/update/:id", to: "users#update", as: "users_update"

  patch "users/delete/:id", to: "users#delete", as: "users_delete"

  # トップページ
  root "homes#top"

  get "/login_top", to: "homes#top_login", as: "longin_top"

end
