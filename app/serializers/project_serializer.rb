class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at, :updated_at
  # has_many :edits
  # has_many :users
end
