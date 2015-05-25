class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|

      t.integer :advocate_id

      t.float :longitude

      t.float :latitude

      t.string :location

      t.string :name


      t.timestamps

    end

  end
end
