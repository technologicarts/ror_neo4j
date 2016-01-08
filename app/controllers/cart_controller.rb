class CartController < ApplicationController
	before_action :check_login
	def add
		mpn = params[:itemid]
		qty = params[:qty]
		item = {mpn => qty}

		item_in_carts = session[:item_in_carts]

		existed_flg = false

		if item_in_carts.nil?
			item_in_carts = []
		else
			item_in_carts.each do |item_in_cart|
				if item_in_cart.keys.first == mpn
					item_in_cart[mpn] = item_in_cart[mpn].to_i + qty.to_i
					existed_flg = true
					break
				end
			end
		end

		item_in_carts.push(item) unless existed_flg

		session[:item_in_carts] = item_in_carts


		# set infomation for small review cart
		item_info = Item.find(mpn)

		review_cart = session[:review_cart]

		if review_cart.nil?
			review_cart = {"total_price" => item_info.list_price.to_i * qty.to_i, "total_qty" => qty}
			
		else
			review_cart["total_qty"] = review_cart["total_qty"].to_i + qty.to_i
			review_cart["total_price"] = review_cart["total_price"].to_i + item_info.list_price.to_i * qty.to_i
		end

		session[:review_cart] = review_cart

		redirect_to '/items'
	end

	def view

		item_in_carts = session[:item_in_carts]

		@items = []

		if item_in_carts.nil?
			return
		end

		@total_price = 0
		

		item_in_carts.each do |item_in_cart|

			mpn = item_in_cart.keys.first
			qty = item_in_cart[mpn]

			item = Item.find(mpn)
			item.qty = qty
			
			@total_price += item.list_price.to_i * item.qty.to_i

			@items.push(item)
		end

	end

	def purchase

		item_in_carts = session[:item_in_carts]

		@items = []

		if item_in_carts.nil?
			return
		end

		item_in_carts.each do |item_in_cart|

			mpn = item_in_cart.keys.first
			qty = item_in_cart[mpn]

			item = Item.find(mpn)

			@items.push(item)
		end

		return @items
	end
end
