module ApplicationHelper
  def sort_link(title, column, options = {}, html_options = {})
      condition = options[:unless] if options.has_key?(:unless)
      link_to_unless condition, title, request.parameters.merge( {:sort => column}), html_options
    end
end
