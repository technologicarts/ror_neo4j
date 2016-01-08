class CreateItemCategories < ActiveRecord::Migration
  def change
    create_table :item_categories, id: false do |t|
      t.primary_key :category_id
      t.string :category_name
      t.string :high_level_category_id

      t.timestamps
    end
  end
end
