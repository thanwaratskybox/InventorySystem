class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :itemName
      t.string :serialNumber
      t.string :itemType
      t.integer :amount
      t.boolean :status
      t.boolean :deleteStatus

      t.timestamps
    end
  end
end
