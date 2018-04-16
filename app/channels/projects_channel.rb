class ProjectsChannel < ApplicationCable::Channel
  def subscribed
    # byebug
    stream_from "projects_channel"
    puts "Connection Made"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
 