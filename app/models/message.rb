class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :created_at, presence: true
  validates :duration, presence: true
end