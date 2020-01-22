class Book
  include Mongoid::Document
  has_many :comments
  belongs_to :user
  field :name, type: String
  field :description, type: String
  field :author, type: String
  field :status, type: Integer, default: 0
  field :user_id, type: String
end
