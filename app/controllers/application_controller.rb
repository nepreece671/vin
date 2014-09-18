#---
# Based on http://www.pragmaticprogrammer.com/titles/rails4 & railscasts.com/episodes/199
#---
class ApplicationController < ActionController::Base
  helper :all
  before_filter :set_i18n_locale_from_params
  before_filter :prepare_for_mobile  
  before_filter :authorize, :except => :login
  protect_from_forgery

private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?
  
  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    request.format = :mobile if mobile_device?
  end
  
  def current_cart 
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

protected

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = 
          "#{params[:locale]} translation unavailable"
        logger.error flash.now[:notice]
      end
    end
  end

  def default_url_options
      { :locale => I18n.locale }
  end

###  if request.format == Mime::HTML 
     def authorize      
     unless User.find_by_id(session[:user_id])
          redirect_to login_url, :notice => "Please log in"
      end
    else
      authenticate_or_request_with_http_basic do |username, password|
          user = User.find_by_name(username)
          user && user.authenticate(password)
      end
    end    
  end
    
