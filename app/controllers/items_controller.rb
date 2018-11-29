class ItemsController < ApplicationController

  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def add_item_to_cart

    
    cart_user = Cart.find_by(user_id: current_user[:id])
    cart_user
   

  #  @cart_user = Cart.find_by(user_id: )
  end

  def delete_item_to_cart
  end 

  def form
  
  end




  private

  def items_params
    params.require(:item).permit(:title, :description, :price, images: [])

  end

end
