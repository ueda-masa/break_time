class User < ApplicationRecord
  has_many :timers
  has_many :messages

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
end