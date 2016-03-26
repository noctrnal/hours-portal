class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :category

  def category
    object.category.id
  end
end
