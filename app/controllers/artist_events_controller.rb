class ArtistEventsController < ApplicationController
  def index
    @artist_events = ArtistEvent.all
    render "index.json.jbuilder"
  end

  def show
    @artist_event = ArtistEvent.find_by(id: params["id"])
    render "show.json.jbuilder"
  end

  def create
    @artist_event = ArtistEvent.new(
      artist_id: params[:artist_id],
      event_id: params[:event_id]
      )
    if @artist_event.save
      render "show.json.jbuilder"
    else
      render json: {errors: @artist_event.errors.full_messages},
        status: :unprocessable_entity
    end

    def destroy
      @artist_event = ArtistEvent.find_by(id: params[:id])
      @artist_event.destroy
      render json: {message: "Event removed"}
    end
  end


  # def update
  #   @artist_event = ArtistEvent.find_by(id: params[:id])
  #   @artist_event.artist_id = params[:artist_id] || @artist_event.artist_id
  #   @artist_event.event_id = params[:event_id] || @artist_event.event_id
    
  #   if @artist_event.save
  #     render "show.json.jbuilder"
  #   else
  #     render json: {errors: @event.errors.full_messages},
  #     status: :unprocessable_entity
  #   end
  # end

end
