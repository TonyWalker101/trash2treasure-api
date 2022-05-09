class User < ActiveRecord::Base
  has_many :donations
  has_many :comments

  validates :name, presence: true
  validates :email, presence: true 
  validates :location, presence: true
  validates :password, presence: true
end
