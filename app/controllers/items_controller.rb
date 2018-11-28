class ItemsController < ApplicationController

  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def cart
    @customer_cart = Cart.where(user_id: current_user[:id])
    @items_id = CartsItem.where(cart_id: @customer_cart.ids[0]).pluck(:item_id)
    @customer_items = Item.find(@items_id)
    result = 0
    @customer_items.each do |item|
      result += item[:price]
    end
    @total_price = result
  end

  def add_item_to_cart
    customer_cart =  Cart.where(user_id: current_user[:id])
    item_id = params[:id].to_i
    cart_id = customer_cart.ids[0]
    CartsItem.create(cart_id: cart_id, item_id: item_id)
    redirect_to "/cart"
  end

  def delete_cart_item
  end

  def delete_all_cart_items
  end

  private

  def items_params
    params.require(:item).permit(:title, :description, :price, :image_url)
  end

end
