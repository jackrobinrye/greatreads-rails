class User < ApplicationRecord
    has_many :book_records
    has_many :books, through: :book_records

    has_secure_password

    validates :name, :email, presence: true
end
