class ItemsController < ApplicationController

  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def add_item_to_cart
    puts params
    puts "==========================="
    customer_cart =  Cart.where(user_id: current_user[:id])
    item_id = params[:id].to_i
    print "item_id = "
    print item_id
    puts ""
    print "customer_cart id = "
    test = customer_cart.ids[0]
    print test

    puts ""
    CartsItem.create(cart_id: test, item_id: item_id)
  #  customer_cart.create()

    puts "params[:id] ="
    puts params[:id]
    puts "---------------------------"
    puts current_user
    puts "==========================="
    puts current_user[:id]
    puts "cart_user"
  #  cart_user = Cart.create(user_id: current_user[:id])
    puts "cart_content"
  #  content_cart = CartsItem.create(item_id: Item.find(params[:id]), cart_id: cart_user)
    puts 'cart.all'
    puts Cart.all



  #  @cart_user = Cart.find_by(user_id: )
  end

  def delete_item_to_cart
  end

  private

  def items_params
    params.require(:item).permit(:title, :description, :price, :image_url)
  end

end
