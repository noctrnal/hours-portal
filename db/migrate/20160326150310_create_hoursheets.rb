class CreateHoursheets < ActiveRecord::Migration[5.0]
  def change
    create_table :hoursheets do |t|
      t.references :user, foreign_key: true
      t.integer :month
      t.integer :year
      t.references :sheet, foreign_key: true

      t.timestamps
    end
  end
end
