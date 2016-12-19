class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_merchant_subscribed?
    merchant_signed_in? && current_merchant.subscribed?
  end
  helper_method :current_merchant_subscribed?
end
