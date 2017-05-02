class HomeController < ApplicationController
  layout 'landing'
  before_action :authenticate_user!, only:[:profile]

  def index

  end

  def choose_type
    session[:user_type] = ''
  end

  def get_region_province
    @provinces = Region.find(params[:id]).provinces
    render layout: false
  end

  def get_sub_genre
    @sub_genres = Genre.find(params[:id]).sub_genres
    render layout: false
  end

  def profile
    if current_user.music_listener?
      redirect_to new_listeners_profile_path
    end

    if current_user.industry_professional? && current_user.professional_profile.nil?
      redirect_to new_professionals_profile_path
    end

  end
end
