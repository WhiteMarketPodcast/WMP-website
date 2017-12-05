class BlogPost < ApplicationRecord
  has_many :localized_blog_posts
  has_attached_file :image, styles: { medium: "300x300", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

end
