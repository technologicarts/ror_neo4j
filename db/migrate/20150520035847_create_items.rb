class CreateItems < ActiveRecord::Migration
  def change
    create_table :items, id: false do |t|
      t.primary_key :mpn
      t.string :detailed_item_info
      t.string :item_info
      t.integer :qty
      t.integer :item_size
      t.string :color
      t.integer :list_price
      t.string :item_name
      t.string :item_image

      t.timestamps
    end
    change_column :items, :mpn, :string
  end
end
  