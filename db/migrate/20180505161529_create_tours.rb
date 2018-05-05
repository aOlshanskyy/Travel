class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.string :body
      t.string :shortbody
      t.integer :price

      t.timestamps
    end
  end
end
