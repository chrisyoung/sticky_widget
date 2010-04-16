# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  helper_method :sticky_params
  after_filter :save_sticky_params, :only => :create
  
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def save_sticky_params
    session[:sticky_params] = params
  end
  
  def sticky_params(term)
    session[:sticky_params][term]
  end
  
  def render(options)
    if options[:sticky_widget]
      @page = options[:sticky_widget]
      render :file => RAILS_ROOT + '/lib/sticky_widget/sticky.html.erb'
    else
      super(options)
    end
  end
  
end
