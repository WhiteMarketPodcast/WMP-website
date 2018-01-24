Rails.application.routes.draw do

#Casein routes
namespace :casein do
  resources :blog_posts
  get  "blog_posts/:id/new_translation",    to: "blog_posts#new_translation",    as: :new_blog_post_translation
  post "blog_posts/:id/create_translation", to: "blog_posts#create_translation", as: :create_blog_post_translation
  delete "blog_posts/:id/delete_translation/:localized_blog_post_id", to: "blog_posts#delete_translation", as: :delete_blog_post_translation
  resources :episodes
end

  root to: 'pages#home'

  scope '(:locale)', locale: /en|pt/ do
    root to: 'pages#home'
    get "blog",      to: "blog_posts#index",  as: :blog
    get "blog/:id",  to: "blog_posts#show",   as: :blog_post
  end
end
