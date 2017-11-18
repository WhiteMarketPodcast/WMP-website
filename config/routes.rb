Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "blog",      to: "blog_posts#index",  as: :blog
  get "blog/:id",  to: "blog_posts#show",   as: :blog_post
end
