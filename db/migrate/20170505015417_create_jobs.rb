class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.text :description
      t.text :experience_level
      t.references :user, foreign_key: true
      t.timestamp :date

      t.timestamps
    end
  end
end
