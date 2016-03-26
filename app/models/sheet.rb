class Sheet < ApplicationRecord
  has_many :categories
  has_many :hoursheets
  has_one :sheet_managers

  validates :name, presence: true
end
