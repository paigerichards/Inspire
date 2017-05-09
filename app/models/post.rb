class Post < ApplicationRecord
belongs_to :user, optional: true


def self.search(search)
  where("title LIKE ? OR genre LIKE ? OR username LIKE ?", "%#{:title}%", "%#{:genre}%", "%#{:username}%") 
end

end
