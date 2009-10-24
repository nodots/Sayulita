class ArtifactBundle < ActiveRecord::Base
  has_many :artifacts
  belongs_to :bschool_app
end
