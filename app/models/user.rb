class User
  include BCrypt
  include ActiveModel::Validations
  include Mongoid::Document

  validates :name, presence: true, uniqueness: true
  validates :password, confirmation: true
  field :name, type: String
  field :password, type: String

  before_create :hash_password

  def authenticate(password)
    Password.new(self.password).is_password?(password)
  end

  private

  def hash_password
    self.password = Password.create(self.password)
  end
end
