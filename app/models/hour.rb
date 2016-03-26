class Hour < ApplicationRecord
  belongs_to :hoursheet
  belongs_to :item

  validates :hoursheet, presence: true
  validates :item_id, presence: true, uniqueness: { scope: :hoursheet_id }
  validates :value, presence: true
end
