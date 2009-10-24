class BschoolApp < ActiveRecord::Base
  belongs_to :bschool, :class_name => "Bschool", :foreign_key => "institution_id"
end
