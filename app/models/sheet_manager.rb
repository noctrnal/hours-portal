class SheetManager < ApplicationRecord
  belongs_to :sheet

  validates :sheet_id, presence: true
  validates :year, presence: true
end
