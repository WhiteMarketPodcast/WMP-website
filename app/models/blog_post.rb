class BlogPost < ApplicationRecord
  has_many :localized_blog_posts

  def localized_version(locale = nil)
    localized_post = localized_blog_posts.where(locale: locale).first if locale
    localized_post ||= localized_blog_posts.where(locale: :en).first
    localized_post ||= localized_blog_posts.first

    localized_post
  end

end
