class Book < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: { maximum: 200 }
	validates :body, presence: true, length: { maximum: 200 }
	has_many :book_comments, dependent: :destroy
end
