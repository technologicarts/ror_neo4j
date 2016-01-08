class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	def get_user_node

	  	puts self.id
	  	# find user_nodes on graph
		user_nodes = Neo4j::Label.find_nodes("user", "user_id", self.id.to_s)

		if !user_nodes.any?
			user_node = Neo4j::Node.create({user_id: self.id.to_s}, :user)
		else
			user_node = user_nodes.first
		end
  	
	end
end
