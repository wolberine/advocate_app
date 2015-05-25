class Teacher < ActiveRecord::Base
  has_many :teacher_enrollments
  has_many :student_enrollments
  belongs_to :advocate
  belongs_to :school
  has_many :teacher_courses, :through => :teacher_enrollments
  has_many :students, :through => :student_enrollments
end
