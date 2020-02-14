class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.integer :age
      t.string :last_name
      t.integer :status
      t.integer :city

      t.timestamps
    end
  end
end
