class SheetManagerSerializer < ActiveModel::Serializer
  attributes :id, :year, :sheet_id

  def sheet_id
    object.sheet.id
  end
end
