class Institution < ActiveRecord::Base
  validates_presence_of :type, :on => :create, :message => "can't be blank"
end
