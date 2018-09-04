class ArtistsController < ApplicationController
  # before_action :authenticate_artist

  def show
    # if params[:id].to_s == current_artist.id.to_s
    @artist = Artist.find_by(id: params[:id])
    render "show.json.jbuilder"
    # else
    #   render json: {}, status: :unauthorized
    # end
  end

  def create
    artist = Artist.new(
      name: params[:name],
      email: params[:email],
      genre: params[:genre],
      password: params[:password]
      )
    if artist.save 
      render json: {message: "User created"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
