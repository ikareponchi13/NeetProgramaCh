class Post < ApplicationRecord
    has_many :comments, dependent: :delete_all

    def self.search(search)
        return Post.all unless search
        Post.where(['title LIKE ?', "%#{search}%"])
    end

end
