class HoursheetSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :month, :year, :sheet

  def sheet
    {
      id: object.sheet.id,
      name: object.sheet.name,
      categories: categories
    }
  end

  private

  def categories
    categories = Category.where(:sheet => object.sheet.id).select(:id, :name)
    hash = []
    categories.each do |category|
      items = {
        :id => category.id,
        :name => category.name,
        :items => items(category),
      }
      hash << items
    end
    hash
  end

  def hours(item)
    Hour.where(:item => item, :hoursheet => object.id).select(:id, :value)
  end

  def items(category)
    items = Item.where(:category => category.id).select(:id, :name)
    hash = []
    items.each do |item|
      hours = {
        :id => item.id,
        :name => item.name,
        :value => hours(item),
      }
      hash << hours
    end
    hash
  end
end
