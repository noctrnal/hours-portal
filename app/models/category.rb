class Category < ApplicationRecord
  belongs_to :sheet
  has_many :items

  validates :name, presence: true
  validates :sheet, presence: true
end
