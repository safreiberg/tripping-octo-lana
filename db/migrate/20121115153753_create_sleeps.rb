class CreateSleeps < ActiveRecord::Migration
  def change
    create_table :sleeps do |t|
      t.datetime :starttime
      t.datetime :endtime
      t.integer :quality
      t.integer :user_id

      t.timestamps
    end
  end
end
