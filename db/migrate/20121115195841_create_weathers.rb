class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :user_id
      t.integer :temperature
      t.datetime :time
      t.string :description

      t.timestamps
    end
  end
end
