class Post < ApplicationRecord
    has_many :comments, dependent: :delete_all

    def self.search(search)
        return Post.includes(:comments).sort {|a,b| b.comments.size <=> a.comments.size} unless search
        Post.where(['title LIKE ?', "%#{search}%"])
    end

end
