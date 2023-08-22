class ChangeDeleteStatusDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :employees, :deleteStatus, from: nil, to: false
    change_column_default :equipment, :deleteStatus, from: nil, to: false
    change_column_default :recordings, :deleteStatus, from: nil, to: false
  end
end
