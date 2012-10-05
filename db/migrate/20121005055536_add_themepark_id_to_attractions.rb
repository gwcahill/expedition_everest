class AddThemeparkIdToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :themepark_id, :integer
  end
end