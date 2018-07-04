class EventsController < ApplicationController
  before_action :set_event, only: [:show, :create, :destroy]

  def index
      @events = Event.all
    if params[:search]
      @events = Event.search(params[:search]).order("created_at DESC")
    else
      @events = Event.all.order("created_at DESC")
    end

  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_event
     @event = Event.find(params[:id])
  end

end
