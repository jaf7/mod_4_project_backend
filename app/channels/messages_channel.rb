class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_channel"
    # puts "Messages Connection Made"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
