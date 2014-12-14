class Position < ActiveRecord::Base
  belongs_to :group

  has_many :shifts

  has_many :user_positions
  has_many :users, through: :user_positions
end
