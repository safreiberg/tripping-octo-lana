class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
      t.float :weight

      t.timestamps
    end
  end
end
