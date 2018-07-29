class EventsController < ApplicationController
  def index
    @events = Event.all
    render "index.json.jbuilder"
  end

  def show
    id_input = params["id"]
    @event = Event.find_by(id: id_input)
    render "show.json.jbuilder"
  end

  def create 
    @event = Event.new(
      address: params[:address],
      name: params[:name],
      time: params[:time],
      description: params[:description]
      )
    if @event.save
      render "show.json.jbuilder"
    else
      render json: {errors: @event.errors.full_messages},
        status: :unprocessable_entity
    end
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.address = params[:address] || @event.address
    @event.name = params[:name] || @event.name
    @event.time = params[:time] || @event.time
    @event.description = params[:description] || @event.description

    if @event.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @event.errors.full_messages},
        status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    render json: {message: "Event removed"}
  end 

end 

