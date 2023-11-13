class Post
  include Mongoid::Document
  field :name, type: String
  field :contect, type: String
end
