class Reader
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :shop_cards
  has_many :books, through: :shop_cards

  field :name, type: String
  field :gender, type: String
  field :age, type: Integer
  field :interested_genres, type: Array
end
