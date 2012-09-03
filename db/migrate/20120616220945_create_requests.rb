class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :department_id
      t.text :description
      t.text :comment
      t.integer :status_id
      t.integer :priority_id
      t.integer :master_id

      t.timestamps
    end
  end
end
