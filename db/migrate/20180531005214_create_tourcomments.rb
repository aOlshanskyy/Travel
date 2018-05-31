class CreateTourcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :tourcomments do |t|
      t.integer :user_id
      t.integer :tour_id
      t.string :textofcom

      t.timestamps
    end
  end
end
