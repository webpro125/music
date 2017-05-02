class UserPolicy < LoggedInPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def user_type?
    session[:user_type] == ENV[:LISTENER_TYPE] || session[:user_type] == ENV[:PROFESSIONAL_TYPE]
  end

  # alias_method :update?, :edit?
  # alias_method :create?, :new?
  # alias_method :index?, :new?
  # alias_method :update_profile?, :edit_profile?
  # alias_method :import_csv?, :new?
end
