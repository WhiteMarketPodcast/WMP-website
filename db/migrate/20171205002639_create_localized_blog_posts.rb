class CreateLocalizedBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :localized_blog_posts do |t|
      t.references :blog_post, foreign_key: true
      t.string :locale
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
