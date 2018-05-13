class WidgetsController < ApplicationController
  before_action :set_widget, only: [:show]

  # GET /widgets
  # GET /widgets.json
  def index
    if params[:search]
      @widgets = Widget.search(params[:search]).alphabetical_order
    else
      @widgets = Widget.all.alphabetical_order 
    end
  end

  # GET /widgets/1
  # GET /widgets/1.json
  def show
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
