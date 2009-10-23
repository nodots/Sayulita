class RefactorUserPerson < ActiveRecord::Migration
  def self.up
    remove_column :users, :short_name
    remove_column :users, :preferred_name
    add_column :users, :person_id, :integer
  end

  def self.down
    remove_column :users, :person_id
    add_column :users, :short_name, :string
    add_column :users, :preferred_name, :string
  end
end
