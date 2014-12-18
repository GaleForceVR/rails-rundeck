class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :distance
      t.text :location

      t.timestamps
    end
  end
end
