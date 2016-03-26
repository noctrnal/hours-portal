class CreateHours < ActiveRecord::Migration[5.0]
  def change
    create_table :hours do |t|
      t.references :hoursheet, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
