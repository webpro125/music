class HomeController < ApplicationController
  layout 'landing'
  def choose_type

  end

  def get_region_province
    @provinces = Region.find(params[:id]).provinces
    render layout: false
  end
end
