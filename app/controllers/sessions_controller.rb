class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      render json: {jwt: jwt, email: user.email, id: user.id}, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render "show.json.jbuilder"
    else
      render json: {message: "didn't work"}
    end
  end
 

  def artist_session_create
    artist = Artist.find_by(email: params[:email])
    if artist && artist.authenticate(params[:password])
      jwt = JWT.encode(
        {
          artist: artist.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      render json: {jwt: jwt, email: artist.email}, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end  

end
