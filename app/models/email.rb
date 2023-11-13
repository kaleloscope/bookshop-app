class Email
  include Mongoid::Document
  field :toaddr, type: Array
  field :subject, type: String
  field :body, type: String
end
