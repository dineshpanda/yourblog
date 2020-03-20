class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.boolean :valid
      t.date :auto_removal_date
      t.time :auto_removal_time
      t.integer :article_id

      t.timestamps
    end
  end
end
