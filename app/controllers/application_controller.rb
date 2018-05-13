class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :current_order

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_order
    if session[:order_id]<2
      Order.new
    elsif session[:order_id]
      Order.find(session[:order_id])
    end
  end

end
