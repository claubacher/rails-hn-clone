require 'BCrypt'

class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  attr_accessible :username, :password

  include BCrypt

  def password
    @password ||= Password.new(password_hash) if password_hash
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
