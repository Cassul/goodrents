class Review < ApplicationRecord
  has_many :comments, dependent: :delete_all
  belongs_to :user
  validates :address, presence: true
  validates :suburb, presence: true,
  validates :user_id, presence: true
  validates :utilities, presence: true
  validates :landlord, presence: true
  validates :neighbours, presence: true
  validates :neighbourhood, presence: true
  validates :comment, presence: true
  validates :comment, presence: true
end
