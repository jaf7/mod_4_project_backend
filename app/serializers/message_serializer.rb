class MessageSerializer < ActiveModel::Serializer
  attributes :sender_id, :id, :text, :created_at, :updated_at
end
