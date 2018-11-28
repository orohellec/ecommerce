class ItemsController < ApplicationController

  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def add_item_to_cart
    customer_cart =  Cart.where(user_id: current_user[:id])
  #  item_id = params[:id].to_i
    test = customer_cart.ids[0]
    CartsItem.create(cart_id: test, item_id: item_id)
  #  customer_cart.create()
  #  @cart_user = Cart.find_by(user_id: )
  end

  def delete_item_to_cart
  end

  private

  def items_params
    params.require(:item).permit(:title, :description, :price, :image_url)
  end

end
