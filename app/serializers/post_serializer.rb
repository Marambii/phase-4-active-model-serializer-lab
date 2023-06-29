class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  belongs_to :author
  has_many :tags through :post_tags

  def short_content
    object.content.length > 40 ? object.content[0..39] + '...' : object.content
  end
end
