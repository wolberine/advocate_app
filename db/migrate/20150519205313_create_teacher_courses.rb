class CreateTeacherCourses < ActiveRecord::Migration
  def change
    create_table :teacher_courses do |t|

      t.datetime :date

      t.string :description

      t.integer :teacher_enrollment_id


      t.timestamps

    end

  end
end
