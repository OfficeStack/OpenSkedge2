class Shift < ActiveRecord::Base
  belongs_to :user
  belongs_to :position

  validates :position_id, presence: true
  validates :start_time, presence: true, date: { before: :end_time }
  validates :end_time, presence: true, date: { after: :start_time }
  # TODO: Recurrence validator
end
