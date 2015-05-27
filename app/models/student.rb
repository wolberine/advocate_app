class Student < ActiveRecord::Base
  has_many :student_enrollments
  belongs_to :school
  has_many :teachers, :through => :student_enrollments
  belongs_to :classroom
end
