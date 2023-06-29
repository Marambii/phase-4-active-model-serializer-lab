class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  belongs_to :author

  def short_content
    object.content.length > 40 ? object.content[0..39] + '...' : object.content
  end
end
