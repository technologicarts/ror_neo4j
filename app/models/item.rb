class Item < ActiveRecord::Base
	self.primary_key = 'mpn'
	validates :mpn, presence: true
	attr_accessor :clicked_count

	# has_and_belongs_to_many :item_categories
	has_many :item_features, dependent: :destroy
	has_many :item_item_categories, :dependent => :destroy
	has_many :item_categories, :through => :item_item_categories

	def save_to_history(user_node)

		# find item_node that relate to this user_node
		history_item_nodes = user_node.nodes(dir: :outgoing)

		# # create node for clicked item at this moment
		# item_node_new = Neo4j::Node.create({mpn: self.mpn}, :item)
		# Neo4j::Relationship.create(:clicked, user_node, item_node_new)

		# create relationshp 'next' from previous item in history
		if history_item_nodes.any?
			item_node_last = history_item_nodes.last

			if item_node_last.props[:mpn].to_s == self.mpn.to_s
				return history_item_nodes
			end
			item_node_new = Neo4j::Node.create({mpn: self.mpn}, :item)
			Neo4j::Relationship.create(:clicked, user_node, item_node_new)
			Neo4j::Relationship.create(:next, item_node_last, item_node_new)
		else
			# create node for clicked item at this moment
			item_node_new = Neo4j::Node.create({mpn: self.mpn}, :item)
			Neo4j::Relationship.create(:clicked, user_node, item_node_new)
		end

		return history_item_nodes
	end

	#########################
	def load_by_nodes(item_nodes)

		items = []
		item_mpns = []

		item_nodes.reverse_each do |item_node|

			mpn = item_node.props[:mpn]
			if !item_mpns.include?(mpn) && mpn != self.mpn
				item_mpns << mpn

				item = Item.find(mpn)
				item.clicked_count = 1
				items.push(item)
			elsif item_mpns.include?(mpn) && mpn != self.mpn
				index = item_mpns.index(mpn)
				item = items.at(index)
				item.clicked_count = item.clicked_count.to_i + 1
			end
		end
		items = items.sort_by!{|u| u.clicked_count}.reverse
		return items
	end

	#########################
	def load_item_categories
		categories = []

	    item_item_categories = ItemItemCategory.where(item_id: self.mpn)

	    item_item_categories.each do |it_cat|
	      categories.push(ItemCategory.find(it_cat.item_category_id))
	    end

	    categories = categories.sort_by{|e| e[:high_level_category_id]}
	end

end
