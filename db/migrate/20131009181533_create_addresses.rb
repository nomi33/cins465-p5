class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :fName
      t.string :lName
      t.string :email
      t.string :zip
      t.string :color

      t.timestamps
    end
  end
end
