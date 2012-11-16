class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :length
      t.integer :intensity
      t.datetime :starttime
      t.datetime :endtime
      t.string :variety
      t.integer :heart_rate
      t.integer :user_id
      t.string :location

      t.timestamps
    end
  end
end
