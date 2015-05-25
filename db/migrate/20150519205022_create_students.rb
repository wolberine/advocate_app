class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.integer :school_id

      t.string :gender

      t.date :dob

      t.string :education_level

      t.string :name


      t.timestamps

    end

  end
end
