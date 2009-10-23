class CreateBschoolApps < ActiveRecord::Migration
  def self.up
    create_table :bschool_apps do |t|
      t.integer :bschool_institution_id
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :bschool_apps
  end
end
