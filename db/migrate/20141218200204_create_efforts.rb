class CreateEfforts < ActiveRecord::Migration
  def change
    create_table :efforts do |t|
      t.integer :user_id
      t.integer :route_id
      t.integer :total_time
      t.integer :total_distance

      t.timestamps
    end
  end
end
