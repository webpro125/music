class Listeners::ProfilesController < ApplicationController
  before_action :authenticate_listener!

  def new
    @profile = current_listener.listener_profile
  end
end
