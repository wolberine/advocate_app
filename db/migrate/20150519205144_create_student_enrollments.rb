class CreateStudentEnrollments < ActiveRecord::Migration
  def change
    create_table :student_enrollments do |t|

      t.integer :teacher_id

      t.integer :student_id


      t.timestamps

    end

  end
end
