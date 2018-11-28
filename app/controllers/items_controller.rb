class ItemsController < ApplicationController

  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def add_item_to_cart

    puts "==========================="
    puts User.all
    puts params
    puts "---------------------------"
    puts current_user
    puts "==========================="
    puts current_user[:id]
    puts "+++++++++++++++++++++++++++"
    cart_user = Cart.find_by(user_id: current_user[:id])
    cart_user.
    puts cart_user



  #  @cart_user = Cart.find_by(user_id: )
  end

  def delete_item_to_cart
  end

  private

  def items_params
    params.require(:item).permit(:title, :description, :price, :image_url)
  end

end
