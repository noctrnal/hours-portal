class CreateSheetManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :sheet_managers do |t|
      t.references :sheet, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
