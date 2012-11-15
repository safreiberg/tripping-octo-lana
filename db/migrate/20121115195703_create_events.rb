class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.text :description
      t.datetime :time

      t.timestamps
    end
  end
end
