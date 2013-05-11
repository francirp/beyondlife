class Person < ActiveRecord::Base
  belongs_to :user
  has_many :trait_types, :through => :traits
  has_many :guest_posts

end
