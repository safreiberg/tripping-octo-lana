class AddTimeToHealth < ActiveRecord::Migration
  def change
    add_column :healths, :time, :datetime
  end
end
