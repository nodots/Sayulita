class AddFieldsToInstitutionPerson < ActiveRecord::Migration
  def self.up
    add_column :institution_people, :title, :string
    add_column :institution_people, :degree, :string
    add_column :institution_people, :start_date, :date
    add_column :institution_people, :end_date, :date
  end

  def self.down
    remove_column :institution_people, :end_date
    remove_column :institution_people, :start_date
    remove_column :table_name, :degree
    remove_column :institution_people, :title
  end
end
