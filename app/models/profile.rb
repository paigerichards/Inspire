class Profile < ApplicationRecord
   mount_uploader :image, ImageUploader
   belongs_to :user
   has_many :posts
   has_many :jobs
   has_many :competitions

end
