class AddUserIdToHealth < ActiveRecord::Migration
  def change
    add_column :healths, :user_id, :integer
  end
end
