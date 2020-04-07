class UserpostSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :post
  # has_one :post
end
