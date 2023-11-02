class Book
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :no_of_pages, type: Integer
  field :summary, type: String
end
