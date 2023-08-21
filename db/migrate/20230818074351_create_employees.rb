class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :firstName
      t.string :lastName
      t.string :nickName
      t.string :code
      t.string :department
      t.string :phone
      t.string :company
      t.boolean :deleteStatus

      t.timestamps
    end
  end
end
