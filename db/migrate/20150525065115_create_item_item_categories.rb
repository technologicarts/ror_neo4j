class CreateItemItemCategories < ActiveRecord::Migration
  def change
    create_table :item_item_categories do |t|
    	t.references :item
    	t.references :item_category

    	t.timestamps
    end

	change_column :item_item_categories, :item_id, :string, :null => false
   	change_column :item_item_categories, :item_category_id, :integer, :null => false

    add_index :item_item_categories, :item_id
    add_index :item_item_categories, :item_category_id
  end
end
