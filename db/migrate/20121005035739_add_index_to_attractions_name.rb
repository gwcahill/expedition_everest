class AddIndexToAttractionsName < ActiveRecord::Migration
  def change
    add_index :attractions, :name, unique: true
  end
end
