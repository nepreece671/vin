# /app/helpers/application/application_helper.rb
# Based on http://www.pragmaticprogrammer.com/titles/rails4 for information.
#
module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
  
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "up") ? "down" : "up"
    link_to title, {:sort => column, :direction => direction},{ :class => css_class}
    # two hash sort_ used here
  end
end
