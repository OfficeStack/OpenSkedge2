class Position < ActiveRecord::Base
  belongs_to :group

  has_many :shifts

  has_many :user_positions
  has_many :users, through: :user_positions

  validates :name, presence: true, length: { maximum: 75 }
  validates :description, length: { maximum: 1000 }
  validates :group_id, presence: true
end
