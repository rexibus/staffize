class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    if current_user.role == "employer"
      @events = current_user.events
    elsif current_user.role == "candidate"
      @events = Event.all
    end

    if params[:search] && !(params[:search] == "")
      @events = @events.search_generic(params[:search]).order("created_at DESC")
    else
      @events = @events.all.order("created_at DESC")
    end

    @events = Event.where.not(latitude: nil, longitude: nil)

    @markers = @events.map do |e|
      {
        lat: e.latitude,
        lng: e.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    if @event.save
      flash[:notice] = "You have successfully applied for this job"
      redirect_to new_event_job_listing_path(@event)
    else
      flash[:alert] = "Your application did not go through"
      redirect_to new_event_path(@event)
    end

  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date)
    # params.require(:event).permit(:venue, :venue_detail, :address, :zip_code)
    # params.require(:event).permit(:province, :country)
  end

  def set_event
   @event = Event.find(params[:id])
 end

end
