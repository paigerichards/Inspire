class Competition < ApplicationRecord
  belongs_to :user

  def self.search(search)
    where("title LIKE ? OR company LIKE ?", "%#{search}%", "%#{search}%")
  end
end
