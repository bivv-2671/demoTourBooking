class CreateBookTours < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tours do |t|
      t.references :tour, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.float :total_price
      t.datetime :booking_start_date
      t.boolean :status
      t.integer :quantity

      t.timestamps
    end
  end
end
