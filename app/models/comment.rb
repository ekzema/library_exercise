class Comment
  include ActiveModel::Validations
  include Mongoid::Document

  belongs_to :user
  belongs_to :book

  validates :text, presence: true

  field :text, type: String
  field :user_id, type: String
  field :book_id, type: String
end
