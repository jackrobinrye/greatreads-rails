class BookRecord < ApplicationRecord
    belongs_to :user
    belongs_to :book

    validates :book_id, uniqueness: { scope: :user_id }
    validates :book_id, presence: true
end
