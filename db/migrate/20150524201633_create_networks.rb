class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|

      t.integer :advocate_id

      t.string :country

      t.string :name


      t.timestamps

    end

  end
end
