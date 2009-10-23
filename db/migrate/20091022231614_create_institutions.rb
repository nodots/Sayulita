class CreateInstitutions < ActiveRecord::Migration
  def self.up
    create_table :institutions do |t|
      t.string :full_name
      t.string :short_name
      t.string :abbreviation
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :institutions
  end
end
