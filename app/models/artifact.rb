class Artifact < ActiveRecord::Base
  set_inheritance_column :artifact_type
end
