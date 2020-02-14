class ChangeStatusDefaultValueInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :status, 'active'
  end
end
