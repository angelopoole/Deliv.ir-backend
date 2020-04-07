class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes
end
