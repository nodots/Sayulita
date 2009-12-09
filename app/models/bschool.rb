class Bschool < Institution
  has_many :bschool_apps, :class_name => "BschoolApp", :foreign_key => "institution_id"
end