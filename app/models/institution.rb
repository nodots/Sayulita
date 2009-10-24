class Institution < ActiveRecord::Base
  set_inheritance_column :institution_type
  has_many :institution_people
  has_many :people, :through => :institution_people
end
