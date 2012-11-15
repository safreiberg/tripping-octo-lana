class AddTimeToFeeling < ActiveRecord::Migration
  def change
    add_column :feelings, :time, :datetime
  end
end
