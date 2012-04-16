class Post < ActiveRecord::Base
  validates :slug, :uniqueness => true
end