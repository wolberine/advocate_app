class AddNetworkToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :network_id, :integer
  end
end
