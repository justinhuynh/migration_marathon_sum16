class BookCategory < ActiveRecord::Base
  validates :book_id, presence: true
  validates :category_id, presence: true

  belongs_to :book
  belongs_to :category
end
