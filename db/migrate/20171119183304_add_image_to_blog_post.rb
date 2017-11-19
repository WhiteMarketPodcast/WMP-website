class AddImageToBlogPost < ActiveRecord::Migration[5.1]
  def up
    add_attachment :blog_posts, :image
  end

  def down
    remove_attachment :blog_posts, :image
  end
end
