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
    5
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
