# /app/controllers/store_controller.rb
# Based on http://www.pragmaticprogrammer.com/titles/rails4 for information.
#
class StoreController < ApplicationController
  helper_method :sort_column, :sort_direction
  skip_before_filter :authorize
  def index
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    else
       @products = Product.order(sort_column + ' ' + sort_direction)
      @cart = current_cart
    end
    latest = Product.latest
  end
### fresh_when(:e_tag => latest, :last_modified => latest.created_at.utc,  :public => true) ##:expires_in => 10.minutes end  
    private
    def sort_column
      Product.column_names.include?(params[:sort]) ? params[:sort] : "artist"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:sort]) ? params[:direction] : "asc"
    end
  end