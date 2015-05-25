class CreateTeacherEnrollments < ActiveRecord::Migration
  def change
    create_table :teacher_enrollments do |t|

      t.boolean :completed

      t.integer :teacher_course_id

      t.integer :teacher_id


      t.timestamps

    end

  end
end
