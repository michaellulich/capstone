class EventsController < ApplicationController
  def index
    @events = Event.all
    render "index.json.jbuilder"
  end
end
