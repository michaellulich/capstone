class UserArtistsController < ApplicationController
  before_action :authenticate_user
  
  def create
    @user_artist = UserArtist.new(
      user_id: current_user.id,
      artist_id: params[:artist_id]
      )
    if @user_artist.save
      render json: {message: "Artist Followed."}
    else
      render json: {errors: @event.errors.full_messages},
        status: :unprocessable_entity
    end
  end

end
