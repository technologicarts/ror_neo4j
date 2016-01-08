class CreateItemFeatures < ActiveRecord::Migration
  def change
    create_table :item_features, id: false do |t|
      t.primary_key :feature_id
      t.string :feature_name

      t.timestamps
    end
  end
end
