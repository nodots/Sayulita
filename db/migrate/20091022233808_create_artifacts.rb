class CreateArtifacts < ActiveRecord::Migration
  def self.up
    create_table :artifacts do |t|
      t.integer :artifact_bundle_id
      t.text :prompt
      t.integer :max_length
      t.string :artifact_type

      t.timestamps
    end
  end

  def self.down
    drop_table :artifacts
  end
end
