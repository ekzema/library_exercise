include ActiveModel::SecurePassword
class User
  include Mongoid::Document
  validates :name, presence: true, uniqueness: true
  has_secure_password
  field :name, type: String
  field :password, type: Digest
end
