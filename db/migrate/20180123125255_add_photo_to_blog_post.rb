class AddPhotoToBlogPost < ActiveRecord::Migration[5.1]
  def change
    add_column :blog_posts, :photo, :string
  end
end
