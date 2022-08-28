class Author < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {maximum: 100}

    has_many :books
end
