class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_action :get_catogory_menus
	
	def wrong_request_url
		redirect_to "/"
	end

	def create_user
		session.clear
		redirect_to "/signup"
	end

	private
		def get_catogory_menus
			@category_menus = ItemCategory.where(high_level_category_id: 1).sort_by{|e| e[:high_level_category_id]}
  		end
	private
	  # using for Mecab natto
		def morphy_analise(iteminfo)
			nm = Natto::MeCab.new('-F %m, ')
			words = nm.parse(iteminfo)
			words.split(",")
		end

		def check_login
			@user = spree_current_user
			if @user.nil? # user not login yet
				redirect_to "/login"
		    	return
		    end
		    return @user
		end
end
