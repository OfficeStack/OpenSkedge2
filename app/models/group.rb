class Group < ActiveRecord::Base
  has_many :positions

  validates :name, presence: true, length: { maximum: 75 }
  validates :description, length: { maximum: 1000 }
end
