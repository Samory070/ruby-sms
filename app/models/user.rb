class User < ApplicationRecord

  has_many :posts
  has_many :comments

  validates :username, uniqueness: true, presence: true

  validates :password_hash, presence: true
  validates :password, presence: true, allow_blank: false

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(plaintext_password)
    self.password == plaintext_password
  end
end
