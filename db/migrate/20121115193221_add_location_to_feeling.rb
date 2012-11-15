class AddLocationToFeeling < ActiveRecord::Migration
  def change
    add_column :feelings, :location, :string
  end
end
