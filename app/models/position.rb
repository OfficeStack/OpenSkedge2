class Position < ActiveRecord::Base
  # Constants
  SUPPORTED_PARADIGMS = [:availability, :fixed_shift, :no_shift]

  # Relations
  belongs_to :group
  has_many :shifts
  has_many :user_positions
  has_many :users, through: :user_positions

  # Validators
  validates :name, presence: true, length: { maximum: 75 }
  validates :description, length: { maximum: 1000 }
  validates :group, presence: true
  enum paradigm: SUPPORTED_PARADIGMS
end
