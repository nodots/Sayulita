class CreateArtifactBundles < ActiveRecord::Migration
  def self.up
    create_table :artifact_bundles do |t|
      t.integer :bschool_app_id
      t.integer :required
      t.integer :total

      t.timestamps
    end
  end

  def self.down
    drop_table :artifact_bundles
  end
end
