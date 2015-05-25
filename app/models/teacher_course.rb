class TeacherCourse < ActiveRecord::Base
  has_many :teacher_enrollments
  has_many :teachers, :through => :teacher_enrollments
end
