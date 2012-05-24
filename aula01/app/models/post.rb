class Post < ActiveRecord::Base
  validates :slug, :uniqueness => true
  
  def has_slug?
    self.slug.present?
  end
  
  def cool?(x)
    x == 1
  end
end