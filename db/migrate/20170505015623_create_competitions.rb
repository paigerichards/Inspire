class CreateCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions do |t|
      t.string :title
      t.string :company
      t.text :description
      t.datetime :date_drawn
      t.references :user, foreign_key: true
      t.timestamp :date

      t.timestamps
    end
  end
end
