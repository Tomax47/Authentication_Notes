
class User < ApplicationRecord

  has_many :notes

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}


  def password
    @password
  end

  def password=(raw_password)

    @password = raw_password

    self.password_digest = BCrypt::Password.create(raw_password)
  end

  def is_password?(raw_password)
    BCrypt::Password.new(password_digest).is_password?(raw_password)
  end

end
