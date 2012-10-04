class CreateThemeparks < ActiveRecord::Migration
  def change
    create_table :themeparks do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
