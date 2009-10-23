class CreateInstitutionPeople < ActiveRecord::Migration
  def self.up
    create_table :institution_people do |t|
      t.integer :institution_id
      t.integer :person_id
      t.string :institution_person_type

      t.timestamps
    end
  end

  def self.down
    drop_table :institution_people
  end
end
