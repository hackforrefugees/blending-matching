module ApplicationHelper
  def current_page(path)
    "current-page" if current_page?(path)
  end
end
