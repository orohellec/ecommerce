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
    @customer_items.each do |item|
      puts item[:title]
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
     customer_cart = Cart.where(user_id: current_user[:id])
     cart_id = customer_cart.ids[0]
     item_id = Item.find(params[:id])
     CartsItem.find_by(item_id: item_id, cart_id: cart_id).delete
     redirect_to "/cart"
  end

  def delete_all_cart_items
    customer_cart = Cart.where(user_id: current_user[:id])
    cart_id = customer_cart.ids[0]
    CartsItem.where(cart_id: cart_id).delete_all
    redirect_to "/cart"
  end

  def checkout
    customer_order = Order.create(user_id: current_user[:id])
    customer_cart = Cart.where(user_id: current_user[:id])
    cart_id = customer_cart.ids[0]
    items_id = CartsItem.where(cart_id: customer_cart.ids[0]).pluck(:item_id)
    customer_items = Item.find(items_id)
    result = 0
    customer_items.each do |item|
      result += item[:price]
    end
    total_price = result
    customer_items.each do |item|
      OrdersItem.create(order_id: customer_order[:id], item_id: item[:id])
    end
    CartsItem.where(cart_id: cart_id).delete_all

    redirect_to new_charge_path
    
  end

  private

  def items_params
    params.require(:item).permit(:title, :description, :price, :image_url)
  end

end
