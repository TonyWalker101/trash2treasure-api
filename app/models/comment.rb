class Comment < ApplicationRecord
  belongs_to :donation
  belongs_to :user

  validates :comment, presence: true
  validates :created_at, presence: true
end
