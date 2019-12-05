class User < ApplicationRecord
    has_many :book_records
    has_many :books, through: :book_records
end
