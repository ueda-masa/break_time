class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :timers
  has_many :messages

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
end