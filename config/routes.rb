Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :blog_post

  get "/blog_posts/new", to: "blog_post#new", as: :new_blog_post
  get "/blog_posts/:id", to: "blog_post#show", as: :blog_post
  patch "/blog_posts/:id", to: "blog_post#update"
  delete "/blog_posts/:id", to: "blog_post#destroy"
  get "/blog_posts/:id/edit", to: "blog_post#edit", as: :edit_blog_post
  post "/blog_posts", to: "blog_post#create", as: :blog_posts

  resources :blog_posts do
    resource :cover_image, only: [:destroy], module: :blog_posts
  end


  # Defines the root path route ("/")
  root "blog_post#index"
end
