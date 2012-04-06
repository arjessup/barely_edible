module ApplicationHelper

  def title
    base_title = "barely.edible"
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end

end
