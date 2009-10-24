class InstitutionPerson < ActiveRecord::Base
    set_inheritance_column :institution_person_type
    belongs_to :institution
    belongs_to :person
end
