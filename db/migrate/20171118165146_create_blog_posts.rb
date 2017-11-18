class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
