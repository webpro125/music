class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }


end
