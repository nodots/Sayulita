class AddArtifactSequence < ActiveRecord::Migration
  def self.up
    add_column :artifacts, :sequence, :integer
    add_column :artifacts, :subsequence, :string
  end

  def self.down
    remove_column :artifacts, :subsequence
    remove_column :artifacts, :sequence
  end
end
