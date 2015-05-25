class School < ActiveRecord::Base
  has_many :teachers , :class_name => "Teacher", :foreign_key => "school_id"
  has_many :students , :class_name => "Student", :foreign_key => "school_id"
  belongs_to :advocate
  belongs_to :network
end
