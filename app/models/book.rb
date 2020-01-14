class Book
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :author, type: String
  field :status, type: Integer
end
