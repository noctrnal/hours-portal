class Item < ApplicationRecord
  belongs_to :category
  has_many :hours

  validates :name, presence: true, uniqueness: { scope: :category_id }
  validates :category, presence: true
end
