class UserEventsController < ApplicationController
  def index
    @user_events = UserEvent.all
    render "index.json.jbuilder"
  end

  def create
    @user_event = UserEvent.new(
      user_id: current_user.id,
      event_id: params[:event_id] 
      )
    if @user_event.save
      render "show.json.jbuilder"
    else
      render json: {errors: @event.
        errors.full_messages},
        status: :unprocessable_entity
    end
  end

  def destroy
    @user_event = UserEvent.find_by(id: params[:id])
    @user_event.destroy
    render json: {message: "User Event Removed"}
  end

end
