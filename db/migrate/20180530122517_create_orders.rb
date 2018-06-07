class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :firstname
      t.string :lastname
      t.string :from_city
      t.string :to_city
      t.integer :count
      t.datetime :data
      t.integer :user_id

      t.timestamps
    end
  end
end
