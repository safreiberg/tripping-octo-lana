class AddLocationToFood < ActiveRecord::Migration
  def change
    add_column :foods, :location, :string
  end
end
