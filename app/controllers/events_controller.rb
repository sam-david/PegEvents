class EventsController < ApplicationController
  def create
    event = Event.find_or_create_by(name: event_params['event']['name'])
    session = UserSession.find_or_create_by(uuid: event_params['event']['session_uuid'])

    user_event = UserEvent.create(
      payload: event_params['event']['payload'],
      version: event_params['event']['version'],
      document_name: event_params['event']['document_name'],
      event_at: event_params['event']['event_time']
    )


    user_event.user_session = session
    user_event.event = event
    user_event.save

    #render json: user_event
    render json: ['test']
  end

  private

  # def event_params
  #   params.require(:event).permit(:name, :autodesk_id, :payload, :event_time, :event)
  # end

  def event_params
    JSON.parse(params['_json'])
  end
end
