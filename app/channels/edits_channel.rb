class EditsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "edits_channel"
    project = Project.find(params[:project])
    stream_for project
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
