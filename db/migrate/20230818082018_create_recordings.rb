class CreateRecordings < ActiveRecord::Migration[7.0]
  def change
    create_table :recordings do |t|
      t.datetime :returnDate
      t.references :employee, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true
      t.boolean :deleteStatus

      t.timestamps
    end
  end
end
