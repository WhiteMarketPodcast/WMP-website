class BlogPostsController < ApplicationController

  def index
    posts = LocalizedBlogPost.where(locale: locale)
    posts = BlogPost if posts.empty?

    @posts = posts.paginate(page: params[:page], per_page: 10).order("id DESC")
  end

  def show
    @post = LocalizedBlogPost.where(
              locale: locale,
              blog_post_id: params[:id]
            ).first
    @post ||= LocalizedBlogPost.where(
                locale: :en,
                blog_post_id: params[:id]
              ).first
    @post ||= LocalizedBlogPost.where(blog_post_id: params[:id]).first
  end
end
