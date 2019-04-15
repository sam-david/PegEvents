class EventsController < ApplicationController
  def create
    user = User.find_by(autodesk_id: event_params[:autodesk_id])


  end

  private

  def event_params
    params.permit(:name, :autodesk_id, :payload)
  end
end
