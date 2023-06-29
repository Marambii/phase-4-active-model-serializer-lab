class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :posts, serializer: PostSerializer
  has_one :profile
end
