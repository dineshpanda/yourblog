class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.float :rating
      t.date :publish_date
      t.time :publish_time

      t.timestamps
    end
  end
end
