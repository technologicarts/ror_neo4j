class AddItemIdToItemFeatures < ActiveRecord::Migration
  def change
  	add_column :item_features, :mpn, :string, :null => false
  end
end
