class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to cart_path
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update(:quantity => params[:quantity])
    @order.save
    redirect_to cart_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def order_items_params
    params.require(:order_item).permit(:quantity, :widget_id, :order_id)
  end

end
