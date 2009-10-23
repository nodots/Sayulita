class RenameBsidInBsapp < ActiveRecord::Migration
  def self.up
    rename_column :bschool_apps, :bschool_institution_id, :institution_id
  end

  def self.down
    rename_column :bschool_apps, :institution_id, :bschool_institution_id
  end
end
