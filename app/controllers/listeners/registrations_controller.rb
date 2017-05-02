class Listeners::RegistrationsController < ApplicationController
  def new
    session[:user_type] = ENV['LISTENER_TYPE']
    redirect_to new_user_registration_url
  end
end
