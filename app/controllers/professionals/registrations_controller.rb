class Professionals::RegistrationsController < ApplicationController
  def new
    session[:user_type] = ENV['PROFESSIONAL_TYPE']
    redirect_to new_user_registration_url
  end
end
