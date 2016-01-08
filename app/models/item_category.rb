class ItemCategory < ActiveRecord::Base
	# has_and_belongs_to_many :items
	has_many :item_item_categories, :dependent => :destroy
	has_many :items, :through => :item_item_categories
end
