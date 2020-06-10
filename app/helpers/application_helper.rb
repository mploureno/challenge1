module ApplicationHelper
  def form
   action_name == 'new' || action_name == 'edit'
  end
end
