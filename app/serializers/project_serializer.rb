class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body
  # has_many :edits
  has_many :users
end
