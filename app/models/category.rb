class Category < ApplicationRecord
  belongs_to :sheet
  has_many :items

  validates :name, presence: true, uniqueness: { scope: :sheet_id }
  validates :sheet, presence: true
end
