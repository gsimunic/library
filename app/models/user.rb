class User < ApplicationRecord

    validates :name, presence: true, length: {maximum: 100}
    validates :typeOfUser, presence: true, inclusion: {in: %w(customer librarian), message: "%{value} type of user is not allowed!"},length: {maximum: 254}
    validates :borrowedBooks, length: {allow_nil: false, maximum: 254, message: "value not in requiered form"}
end
