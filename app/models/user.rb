class User < ApplicationRecord
  # Remember to create a migration!
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :posts

  def name
    @name = self.first_name + " " + self.last_name
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, plaintext_password)
    return nil unless user = find_by(email: email)
    return user if user.password == plaintext_password
    return nil
  end
end
