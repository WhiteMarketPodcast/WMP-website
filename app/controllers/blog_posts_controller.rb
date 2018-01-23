class BlogPostsController < ApplicationController

  def index
    @posts = BlogPost.includes(:localized_blog_posts).paginate(page: params[:page], per_page: 10).order("id DESC")
  end

  def show
    @post = BlogPost.find(params[:id]).localized_version(locale)
  end
end
