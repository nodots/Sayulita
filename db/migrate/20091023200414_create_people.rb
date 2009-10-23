class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :full_name
      t.string :preferred_name
      t.string :abbreviation
      t.date :dob
      t.string :sex

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
