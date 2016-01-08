class ItempageController < ApplicationController
  before_action :check_login
  def show
 
    # access user_nodes on graph
    @user_node = @user.get_user_node

    # item by id
    @item = Item.find(params[:id])

    @history_item_nodes = @item.save_to_history(@user_node)

    # items from history
    @items = @item.load_by_nodes(@history_item_nodes)

    # item categories level corresponding to this item
    @categories = @item.load_item_categories

    @search_items = []
    @search_key = ""

    if @item.mpn == session[:search_item_id]

      @search_key = session[:search_item_key]

      if !@search_key.nil?

        @search_items = Item.where('item_info LIKE ?', '%' << @search_key<< '%').all

      end
    end

    @item_features = [] #morphy_analise(@item.item_info)


  rescue Exception
    redirect_to "/"

  end

  def add
    # puts "+++++++++++submit++++++++++++"
    # puts params[:commit]
  end

  # not using now
  def index
    @items = Item.all
  end

  def search

    mpn = params[:itemid]
    search_key = params[:search_key]

    session[:search_item_key] = search_key
    session[:search_item_id] = mpn
    redirect_to "/item/#{mpn}/detail"
  end

end
