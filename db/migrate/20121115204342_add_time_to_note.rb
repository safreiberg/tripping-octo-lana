class AddTimeToNote < ActiveRecord::Migration
  def change
    add_column :notes, :time, :datetime
  end
end
