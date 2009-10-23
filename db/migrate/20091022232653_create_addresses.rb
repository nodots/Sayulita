class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :institution_id
      t.integer :user_id
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
