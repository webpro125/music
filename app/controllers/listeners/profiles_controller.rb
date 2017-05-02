class Listeners::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = current_user
    @listener_genre = @user.listener_genres.build
  end

  def create
    @user = current_user
    # debugger
    if @user.update_attributes(genre_params)
      redirect_to new_listeners_profile_path, notice: 'Sub Genres are updated successfully.'
    end
  end

  private

  def genre_params
    params.require(:user).permit(
        listener_genres_attributes: [:id, :genre_id, :_destroy, listener_sub_genres_attributes: [:id, :sub_genre_id, :_destroy]])
  end
end
