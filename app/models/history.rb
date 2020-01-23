class History
  include Mongoid::Document
  include ActiveModel::Validations

  validates :user_id, :book_id, presence: true

  field :user_id, type: String
  field :book_id, type: String
  field :taken, type: DateTime
  field :returned, type: DateTime
end
