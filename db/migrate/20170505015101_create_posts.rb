class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :bibliography
      t.text :excerpt
      t.integer :price
      t.timestamp :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
