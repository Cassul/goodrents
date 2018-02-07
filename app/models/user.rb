class User < ApplicationRecord
  has_many :comments,
  dependent: :destroy
  has_many :reviews,
  dependent: :destroy
  has_secure_password
  validates :username,
    presence: true,
    length: {in: 3..20}
  validates :email,
  presence: true,
  uniqueness: true,
  confirmation: true
  validates :password,
  presence: true
  has_many:likes
end
