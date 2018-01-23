class RemoveImageFromBlogPosts < ActiveRecord::Migration[5.1]
  def up
    remove_attachment :blog_posts, :image
  end

  def down
    add_attachment :blog_posts, :image
  end
end
