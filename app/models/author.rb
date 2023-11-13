class Author
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :books

  field :name, type: String
  field :age, type: Integer
  field :gender, type: String
  field :experience, type: Integer

  validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 65 }
  validates :gender, inclusion: { in: %w[male female not_specified] }
end
