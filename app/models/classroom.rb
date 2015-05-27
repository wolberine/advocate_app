class Classroom < ActiveRecord::Base
  has_many :teachers , :class_name => "Teacher", :foreign_key => "classroom_id"
  has_many :students , :class_name => "Student", :foreign_key => "classroom_id"
  belongs_to :school
end
