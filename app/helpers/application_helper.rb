module ApplicationHelper
  def sort_link(title, column, options = {})
      condition = options[:unless] if options.has_key?(:unless)
      link_to_unless condition, title, request.parameters.merge( {:sort => column} )
    end
end
