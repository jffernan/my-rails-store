class OrdersController < ApplicationController
  #include CurrentCart
  #before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders=Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order_items = @order.order_items
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order_items = @order.order_items
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    #@order.add_order_items_from_cart(@cart)

    @order_items = @order.order_items
    respond_to do |format|
      if @order.save
        @order.total_charge=@order.total_price

        format.html { redirect_to @order, notice:
          "Thank you for your order.  You will receive it today."}
        format.json { render :show, status: :created,
          location: @order }
        session[:order_id] = nil
      else
        format.html { render :new }
        format.json { render json: @order.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_items_id, :user_id, :name, :shipping_address, :user_email, :pay_type, :status, :total_price, :phone)
    end
  #...

  private

end
