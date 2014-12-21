class Role < ActiveRecord::Base
  has_many :user_roles
  has_many :users, through: :user_roles

  validates :name, presence: true, length: { maximum: 75 }
end
