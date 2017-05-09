class Profile < ApplicationRecord

   belongs_to :user
  #  has_attached_file :image
   has_many :posts
   has_many :jobs
   has_many :competitions

end
