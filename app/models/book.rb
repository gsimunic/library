class Book < ApplicationRecord
    validates :author, presence: true, length: {maximum: 254}
    validates :title, presence: true,uniqueness: true, length: {maximum: 254}
    validates :quantity, presence: true, length: {maximum: 3}

    belongs_to :author
end
