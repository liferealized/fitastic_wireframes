# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  
  before_filter :current_controller_and_action_names


  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '47a67523cefe8d19e54bad48e95169e2'
  
  def current_controller_and_action_names
    @current_controller = controller_name
    @current_action = action_name
  end
  
end
