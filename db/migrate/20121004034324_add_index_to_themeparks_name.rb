class AddIndexToThemeparksName < ActiveRecord::Migration
  def change
    add_index :themeparks, :name, unique: true
  end
end
