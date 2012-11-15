class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.integer :value
      t.string :target_type
      t.integer :target_id
      t.integer :user_id

      t.timestamps
    end
  end
end
