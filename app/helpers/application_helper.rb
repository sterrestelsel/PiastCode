module ApplicationHelper

  def name_errors(count)
    case count
    when 1
      "błąd"
    when 2..4
      "błędy"
    else
      "błędów"
    end
  end

  def item_active?(path, parse=false)
    if (not parse and request.path == path) or (parse and request.path.include?(path)) then
      'item active'
    else
      'item'
    end
  end

end
