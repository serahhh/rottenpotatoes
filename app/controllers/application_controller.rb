class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def sort_order(default)
        "#{(params[:sort] || default.to_s).gsub(/[\s;'\"]/,'')} #{'ASC'}"
    end
end
