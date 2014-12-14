class Shift < ActiveRecord::Base
  belongs_to :user
  belongs_to :position
end
