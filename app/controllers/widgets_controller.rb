class WidgetsController < ApplicationController
  before_action :set_widget, only: [:show]

  # GET /widgets
  # GET /widgets.json
  def index
    @widgets = Widget.search(params[:name]).alphabetical_order
    @order_item = current_order.order_items.new
  end

  # GET /widgets/1
  # GET /widgets/1.json
  def show
    @order_item = current_order.order_items.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widget
      @widget = Widget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def widget_params
      params.require(:widget).permit(:name, :price, :quantity, :description)
    end
end
