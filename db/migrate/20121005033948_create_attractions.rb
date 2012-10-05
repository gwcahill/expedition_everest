class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :totaltime
      t.integer :totallength
      t.integer :yearbuilt

      t.timestamps
    end
  end
end
