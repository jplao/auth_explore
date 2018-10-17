class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true

  validates_presence_of :password, require: true

  def self.authenticate(email, password)
    user_by_email = User.find(params[email])
    user_by_password = User.find(params[password])
    if user_by_email.id == user_by_password.id
      user = user_by_email
    end
  end

end
