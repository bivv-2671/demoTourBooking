class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :tour, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.text :content
      t.integer :comment_parent_id, null: false
      t.integer :rating
      t.boolean :status, default: true

      t.timestamps
    end
    add_index :comments, :comment_parent_id
  end
end
