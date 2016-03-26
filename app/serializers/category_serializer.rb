class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :sheet

  def sheet
    object.sheet.id
  end
end
