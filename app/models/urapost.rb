class Urapost < ApplicationRecord
    has_many :uracomments, dependent: :delete_all
end
