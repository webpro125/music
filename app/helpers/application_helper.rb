module ApplicationHelper
  def page_class_active (controller, action='')
    action == '' ? (params[:controller] == controller ? 'active' : '') : (params[:controller] == controller && params[:action] == action ? 'active' : '')
  end

  def user_logged_in?
    listener_signed_in? || professional_signed_in?
  end

  def log_out_path
    if listener_signed_in?
      destroy_listener_session_path
    else
      destroy_professional_session_path
    end

  end
end
