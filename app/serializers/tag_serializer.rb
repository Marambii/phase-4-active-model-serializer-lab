class TagSerializer < ActiveModel::Serializer
  attributes :id, name

  has_many :posts, through: :post_tags
end
