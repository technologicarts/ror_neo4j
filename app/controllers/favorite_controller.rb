class FavoriteController < ApplicationController
  before_action :check_login
	def add
		mpn = params[:id]

		mpn_in_favorites = session[:mpn_in_favorites]

		if mpn_in_favorites.nil?
			mpn_in_favorites = []
		end

		mpn_in_favorites.push(mpn) unless mpn_in_favorites.include?(mpn) || mpn.blank?

		session[:mpn_in_favorites] = mpn_in_favorites

		redirect_to '/items'
	end

	def view
		
		mpn_in_favorites = session[:mpn_in_favorites]
		# empty thi sao

		@items = []

		if mpn_in_favorites.nil?
			return @items
		end

		mpn_in_favorites.each do |mpn_in_favorite|
			item = Item.find(mpn_in_favorite)
			@items.push(item) unless item.nil?
		end

		return @items
	end
end
