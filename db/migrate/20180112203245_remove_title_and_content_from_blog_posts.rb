class RemoveTitleAndContentFromBlogPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :blog_posts, :title, :string
    remove_column :blog_posts, :content, :text
  end
end
