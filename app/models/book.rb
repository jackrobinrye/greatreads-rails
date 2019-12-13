class Book < ApplicationRecord
    has_many :book_records
    has_many :users, through: :book_records
    belongs_to :author
    belongs_to :genre

    validates :title, uniqueness: { scope: :author }
    validates :title, :author_id, :genre_id, presence: true
end
