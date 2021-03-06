class User < ActiveRecord::Base
  attr_accessor :password
  has_many :posts
  has_many :comments
  validates :name, presence: true
  validates_uniqueness_of :name
  validates :email, presence: true
  validates_uniqueness_of :email
  validates_confirmation_of :password
  before_save :encrypt_password

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
    user=User.where(email: email).first
    if user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

end
