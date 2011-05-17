module ApplicationHelper
  def title
    base_title="Sample application follow on"
    
    if @title.nil?
      base_title
    else
      "#{base_title}| #{@title}"
    end
  end
end
