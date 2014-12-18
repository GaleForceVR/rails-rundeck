class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.integer :effort_id
      t.integer :distance
      t.integer :time

      t.timestamps
    end
  end
end
