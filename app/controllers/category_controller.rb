class CategoryController < ApplicationController
  # before_action :get_catogory_menus
  before_action :check_login
  def show

    @categories = []
    @category_ids = []
    if !params[:idlv1].nil?
      @category_ids.push(params[:idlv1])
    end
    if !params[:idlv2].nil?
      @category_ids.push(params[:idlv2])
    end
    if !params[:idlv3].nil?
      @category_ids.push(params[:idlv3])
    end

    if !@category_ids.empty?
      
      @category_ids.each do |category_id|
        item_category = ItemCategory.find(category_id)
        # if nil since not found
        @categories.push(item_category)
      end

      @item_item_categories = ItemItemCategory.where(:item_category_id => @category_ids.last)
    
    end
  			
  	@items = []

  	@item_item_categories.each do |item_item_category|
  		@items.push(Item.find(item_item_category.item_id))
  	end

  rescue Exception
    redirect_to "/"
  end
end
