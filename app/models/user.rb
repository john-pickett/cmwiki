class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books
  before_save { self.email = email.downcase }
  before_save { self.role ||= :member }

  enum role: [:member, :admin, :awesome]
end
