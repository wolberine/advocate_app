class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|

      t.integer :advocate_id

      t.string :gender

      t.date :dob

      t.string :education_level

      t.integer :teacher_enrollment_id

      t.integer :school_id

      t.string :name


      t.timestamps

    end

  end
end
