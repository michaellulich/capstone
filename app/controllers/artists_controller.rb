class ArtistsController < ApplicationController
  
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
