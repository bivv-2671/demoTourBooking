class CreateBlogReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_reviews do |t|
      t.string :title
      t.text :content
      t.float :price
      t.string :address
      t.references :account, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
