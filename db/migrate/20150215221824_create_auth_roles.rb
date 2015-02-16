class CreateAuthRoles < ActiveRecord::Migration
  def change
    create_table :auth_roles do |t|
      t.string :name,        :null => false
      t.string :title,       :null => false
      t.text   :description, :null => false

      t.timestamps null: false
    end
  end
end
