class User < ApplicationRecord
  has_secure_password

  has_many :rooms, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :user_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end