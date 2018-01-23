Rails.application.routes.draw do

#Casein routes
namespace :casein do
    resources :episodes
end

  root to: 'pages#home'

  scope '(:locale)', locale: /en|pt/ do
    root to: 'pages#home'
    get "blog",      to: "blog_posts#index",  as: :blog
    get "blog/:id",  to: "blog_posts#show",   as: :blog_post
  end
end
