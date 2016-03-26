class SheetManagerSerializer < ActiveModel::Serializer
  attributes :id, :year
  has_one :sheet
end
