# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
  { name: "Hours Sheet"},
].each do |attributes|
  Sheet.create(attributes)
end

[
  { name: "Education", sheet_id: 1 },
  { name: "Finance", sheet_id: 1 },
  { name: "Service", sheet_id: 1 },
  { name: "Other", sheet_id: 1 },
].each do |attributes|
  Category.create(attributes)
end

[
  { name: "Chapter Meetings", category_id: 1 },
  { name: "Publicity", category_id: 2 },
  { name: "Scholarship", category_id: 3 },
  { name: "Executive Board", category_id: 4 },
].each do |attributes|
  Item.create(attributes)
end

[
  { year: 2016, sheet_id: 1 },
].each do |attributes|
  SheetManager.create(attributes)
end

[
  { user_id: 1, sheet_id: 1, month: 1, year: 2000 },
].each do |attributes|
  Hoursheet.create(attributes)
end

[
  { hoursheet_id: 1, item_id: 1, value: 10 },
  { hoursheet_id: 1, item_id: 2, value: 20 },
  { hoursheet_id: 1, item_id: 3, value: 30 },
  { hoursheet_id: 1, item_id: 4, value: 40 },
].each do |attributes|
  Hour.create(attributes)
end
