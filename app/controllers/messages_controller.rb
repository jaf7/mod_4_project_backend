class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    # if message.save
      # render json: message
      serialized_data = ActiveModelSerializers::Adapter::Json.new(MessageSerializer.new(message)).serializable_hash
      # MessagesChannel.broadcast 'messages_channel', serialized_data
      ActionCable.server.broadcast 'messages_channel', serialized_data
      head :ok
    # end
  end

  private

  def message_params
    params.require(:message).permit(:sender_id, :id, :text, :created_at, :updated_at)
  end

end
