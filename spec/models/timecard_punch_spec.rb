require 'rails_helper'

RSpec.describe TimecardPunch, :type => :model do
  describe 'Associations' do
    it { should belong_to(:user) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:start_datetime) }
  end
end
