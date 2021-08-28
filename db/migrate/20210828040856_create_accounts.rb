class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :email, limit: 100, null: false
      t.string :phone
      t.boolean :role

      t.timestamps
    end
  end
end
