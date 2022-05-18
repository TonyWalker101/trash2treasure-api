class Donation < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true
  validates :condition, presence: true
  validates :available, presence: true
  validates :created_at, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
