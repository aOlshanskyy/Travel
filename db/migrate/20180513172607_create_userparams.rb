class CreateUserparams < ActiveRecord::Migration[5.1]
  def change
    create_table :userparams do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.string :country
      t.integer :phone

      t.timestamps
    end
  end
end
