class AddLocationToSleep < ActiveRecord::Migration
  def change
    add_column :sleeps, :location, :string
  end
end
