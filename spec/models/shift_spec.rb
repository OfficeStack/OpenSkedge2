require 'rails_helper'

RSpec.describe Shift, :type => :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:position) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:position_id) }
    it { should validate_presence_of(:start_time) }
    it { should validate_presence_of(:end_time) }
  end
end
