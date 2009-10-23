class Institution < ActiveRecord::Base
  set_inheritance_column :institution_type
end
