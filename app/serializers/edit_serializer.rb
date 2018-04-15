class EditSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :text, :created_at
end
