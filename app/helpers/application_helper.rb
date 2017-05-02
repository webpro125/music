module ApplicationHelper
  def page_class_active (controller, action='')
    action == '' ? (params[:controller] == controller ? 'active' : '') : (params[:controller] == controller && params[:action] == action ? 'active' : '')
  end

  def user_type_title
    if session[:user_type] == ENV['LISTENER_TYPE']
      'Music Listener Sign Up'
    elsif  session[:user_type] == ENV['PROFESSIONAL_TYPE']
      'Industry Professional Sign Up'
    else
      '<script type="text/javascript">
                  window.location.href="/choose_type"  // put your correct path in a string here
      </script>'.html_safe
    end
  end
end
