class HourSerializer < ActiveModel::Serializer
  attributes :id, :hoursheet, :item, :value

  def hoursheet
    object.hoursheet.id
  end

  def item
    object.item.id
  end
end
