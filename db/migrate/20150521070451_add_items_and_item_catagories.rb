class AddItemsAndItemCatagories < ActiveRecord::Migration
  def change
  	# create_table :items_item_categories do |t|
  	# 	t.belongs_to :items
  	# 	t.belongs_to :item_categories
  	# end
  	# change_column :items_item_categories, :items_id, :string, :null => false
   #  change_column :items_item_categories, :item_categories_id, :integer, :null => false

  	# change_column :items_item_categories, :item_categories_id, :string

  	# execute "ALTER TABLE items_item_categories ADD CONSTRAINT itempk FOREIGN KEY (items_id) REFERENCES item(mpn)"

  	# create_join_table :items, :item_categories do |t|

  	# end


    # create_table :items_item_categories do |t|
    #   t.references :items, index: true
    #   t.references :item_categories, index: true
    # end
  end
end
