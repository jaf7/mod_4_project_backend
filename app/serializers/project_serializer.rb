class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body, :created_at, :updated_at
  # has_many :edits
  has_many :users
end
