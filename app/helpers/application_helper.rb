# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def navigation_link(name, options, matchAction = false)
    if options[:controller] == @current_controller
      if matchAction && options[:action] == @current_action
        link_to name, options, :class => 'active'
      elsif matchAction && options[:action] != @current_action
        link_to name, options
      else
        link_to name, options, :class => 'active'
      end
    else
      link_to name, options
    end
  end
  
end
