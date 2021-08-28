class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :url
      t.string :imageable_type
      t.integer :imageable_id

      t.timestamps
    end
    add_index :images, :imageable_id
  end
end
