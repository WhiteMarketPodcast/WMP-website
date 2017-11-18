class BlogPostsController < ApplicationController

  def index
    @posts = BlogPost.paginate(page: params[:page], per_page: 10).order("id DESC")
  end

  def show
    @post = BlogPost.find(params[:id])
  end
end
