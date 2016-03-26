class Hoursheet < ApplicationRecord
  belongs_to :sheet

  validates :user_id, presence: true
  validates :month, presence: true
  validates :year, presence: true
  validates :sheet_id, presence: true
end
