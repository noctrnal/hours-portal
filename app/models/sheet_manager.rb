class SheetManager < ApplicationRecord
  belongs_to :sheet

  validates :sheet_id, presence: true, uniqueness: { scope: :year }
  validates :year, presence: true
end
