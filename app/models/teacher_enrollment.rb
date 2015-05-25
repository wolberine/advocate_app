class TeacherEnrollment < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :teacher_course
end
