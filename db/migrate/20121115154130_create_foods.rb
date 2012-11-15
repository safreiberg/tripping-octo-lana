class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :carbs
      t.integer :fat
      t.integer :protein
      t.datetime :time
      t.integer :calories

      t.timestamps
    end
  end
end
