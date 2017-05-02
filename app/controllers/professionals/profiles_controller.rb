class Professionals::ProfilesController < ApplicationController
  def new
    @user = current_user
    if @user.professional_profile.nil?
      @professional_profile = @user.build_professional_profile
    else
      @professional_profile = @user.professional_profile
    end
    @professional_profile.ip_profiles.build
  end

  def create
    @user = current_user
    if @user.professional_profile.nil?
      @professional_profile = @user.build_professional_profile(professional_params)
      if @professional_profile.save
        redirect_to new_professionals_profile_path, notice: 'Profile is updated successfully.'
      else render :new
      end
    else
      @professional_profile = @user.professional_profile
      if @professional_profile.update_attributes(professional_params)
        redirect_to new_professionals_profile_path, notice: 'Profile is updated successfully.'
      else render :new
      end
    end


  end

  private

  def professional_params
    params.require(:professional_profile).permit( :hireable_lesson, :hireable_booking,
        ip_profiles_attributes: [:id, :profile_id, :profile_name, :_destroy, ip_sub_profiles_attributes: [:id, :sub_profile_id, :_destroy]]
    )
  end
end
