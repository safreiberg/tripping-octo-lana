class AddWhatToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :what, :string
  end
end
