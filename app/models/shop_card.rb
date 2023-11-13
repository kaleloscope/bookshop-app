class ShopCard
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :reader
  belongs_to :book

  field :shop_name, type: String
end
