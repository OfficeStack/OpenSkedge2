class Position < ActiveRecord::Base
  # Constants
  PARADIGM_AVAILABILITY = 'availability'
  PARADIGM_FIXED_SHIFT = 'fixed_shift'
  PARADIGM_NO_SHIFT = 'no_shift'
  SUPPORTED_PARADIGMS = [PARADIGM_AVAILABILITY, PARADIGM_FIXED_SHIFT, PARADIGM_NO_SHIFT]

  # Relations
  belongs_to :group
  has_many :shifts
  has_many :user_positions
  has_many :users, through: :user_positions

  # Validators
  validates :name, presence: true, length: { maximum: 75 }
  validates :description, length: { maximum: 1000 }
  validates :group, presence: true
  validates :paradigm, presence: true, inclusion: { in: SUPPORTED_PARADIGMS }
end
