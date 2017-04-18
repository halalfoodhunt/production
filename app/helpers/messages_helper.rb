module MessagesHelper
  def recipients_options
    s = ''
    Friend.all.each do |friend|
      s << "<option value='#{friend.id}'>#{friend.name}</option>"
    end
    s.html_safe
  end
end