class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.float :price
      t.integer :num_of_paticipants
      t.string :address

      t.timestamps
    end
  end
end
