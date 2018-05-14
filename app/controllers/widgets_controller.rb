class WidgetsController < ApplicationController
  before_action :set_widget, only: [:show]

  # GET /widgets
  # GET /widgets.json
  def index
    @widgets = Widget.search(params[:name]).alphabetical_order
    respond_to do |format|
      if @widgets.count==0
        format.html { redirect_to widgets_path,
          notice: "Sorry no product match! View full inventory below." }
      else
        format.html { render :index }
      end
    end
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
