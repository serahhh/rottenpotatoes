module ApplicationHelper
  def sort_link(title, column, options = {}, html_options = {})
    link_to title, request.parameters.merge({:sort => column}), html_options
  end
end
