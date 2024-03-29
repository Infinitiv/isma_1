class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :role_id

      t.timestamps
    end
  end
end
