class Hour < ApplicationRecord
  belongs_to :hoursheet
  belongs_to :item

  validates :hoursheet, presence: true
  validates :item, presence: true
  validates :value, presence: true
end
