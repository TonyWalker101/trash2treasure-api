class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true 
  validates :location, presence: true
  validates :password, presence: true
end
