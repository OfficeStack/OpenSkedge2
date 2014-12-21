class Availability < ActiveRecord::Base
  # Constants
  LOW_PREFERENCE = 1
  MED_PREFERENCE = 2
  HIGH_PREFERENCE = 3

  # Relations
  belongs_to :user

  # Validators
  validates :user, presence: true
  validates :preference_level, presence: true, numericality: { only_integer: true },
    inclusion: { in: LOW_PREFERENCE..HIGH_PREFERENCE }
  validates :start_time, presence: true, date: { before: :end_time }
  validates :end_time, presence: true, date: { after: :start_time }
  # TODO: Recurrence validator
end
