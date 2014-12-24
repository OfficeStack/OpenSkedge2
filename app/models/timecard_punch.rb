class TimecardPunch < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :start_datetime, presence: true
end
