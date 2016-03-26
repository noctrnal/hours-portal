class Sheet < ApplicationRecord
  has_many :categories
  has_one :sheet_managers

  validates :name, presence: true
end
