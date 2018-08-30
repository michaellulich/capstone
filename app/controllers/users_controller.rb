class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = current_user
    render "show.json.jbuilder"
  end

  def profile
    @user = current_user
    render "profile.json.jbuilder"
  end 
end
