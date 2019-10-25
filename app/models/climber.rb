class Climber < ApplicationRecord
  has_many :comments
  has_many :climbs, through: :comments
  has_many :ticks
  has_many :climbs, through: :ticks
  has_many :subscriptions
  has_many :articles, through: :subscriptions

  validates :username, uniqueness: true
  has_secure_password

  # def password=(plaintext_password)
  #   self.password_digest = BCrypt::Password.create(plaintext_password)
  # end
  #
  # def authenticate(plaintext_password)
  #   BCrypt::Password.new(self.password_digest) == plaintext_password
  # end

end
