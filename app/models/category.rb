class Category < ApplicationRecord
  belongs_to :sheet

  validates :name, presence: true
  validates :sheet, presence: true
end
