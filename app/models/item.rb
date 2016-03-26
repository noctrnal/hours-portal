class Item < ApplicationRecord
  belongs_to :category
  has_many :hours

  validates :name, presence: true
  validates :category, presence: true
end
