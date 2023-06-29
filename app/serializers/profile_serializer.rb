class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :avatar_url

  belongs_to :author
end
