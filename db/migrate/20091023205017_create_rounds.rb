class CreateRounds < ActiveRecord::Migration
  def self.up
    create_table :rounds do |t|
      t.integer :bschool_app_id
      t.integer :round_number
      t.datetime :deadline

      t.timestamps
    end
  end

  def self.down
    drop_table :rounds
  end
end
