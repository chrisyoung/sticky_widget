# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require 'sticky_widget/sticky_widget.rb'
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  helper_method :sticky_param
  include StickyWidget::ControllerHelpers
  
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
