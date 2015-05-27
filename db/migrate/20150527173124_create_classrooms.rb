class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|

      t.integer :school_id

      t.string :name

      t.text :description


      t.timestamps

    end

  end
end
