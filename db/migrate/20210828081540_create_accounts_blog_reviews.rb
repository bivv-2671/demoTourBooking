class CreateAccountsBlogReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts_blog_reviews do |t|
      t.references :account, null: false, foreign_key: true
      t.references :blog_review, null: false, foreign_key: true
      t.boolean :like_status

      t.timestamps
    end
  end
end
