# require 'natto'

class ItemFeature < ActiveRecord::Base
	# attr_accessor :features

	belongs_to :item

	# def morphy_analise(iteminfo:)
	# 	nm = Natto::MeCab.new('-F %m, ')
	# 	words = nm.parse(iteminfo)
	# 	@features = words.split(",")
	# end
end
