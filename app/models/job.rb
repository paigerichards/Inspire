class Job < ApplicationRecord
  belongs_to :user

  def self.search(search)
    where("title LIKE ? OR company LIKE ? OR experience_level LIKE ? ", "%#{search}%", "%#{search}%","%#{search}%")
  end
end
