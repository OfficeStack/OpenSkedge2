require 'digest/md5'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_roles
  has_many :roles, through: :user_roles

  has_many :user_positions
  has_many :positions, through: :user_positions

  has_many :shifts
  has_many :availabilities
  has_many :timecard_punches

  def open_timecard_punch
    timecard_punches.where(end_datetime: nil).first
  end

  def gravatar_url
    hash = Digest::MD5.hexdigest(email)

    "https://www.gravatar.com/avatar/#{hash}?s=256"
  end
end
