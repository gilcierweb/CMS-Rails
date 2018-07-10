class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :salt
      t.integer :role_id

      t.timestamps
    end
  end
end
