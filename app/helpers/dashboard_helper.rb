module DashboardHelper
  
  def scheduleViewTitle(viewName)
    title = "Today's Schedule"
    
    if (viewName == 'week')
      title = "This Week's Schedule"
    elsif (viewName == 'month')
      title = "This Month's Schedule"
    end
    
    title
    
  end
  
end
