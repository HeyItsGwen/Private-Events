class AttendeesController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:id])
    current_user.attendees.create(attended_event_id: @event.id)
    redirect_to current_user
  end
  
  def destroy
    @attendee = Attendee.find(params[:id])
    current_user.attendees.destroy(@attendee)
    redirect_to current_user
  end
end