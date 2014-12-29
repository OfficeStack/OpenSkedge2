require 'rails_helper'

RSpec.describe Availability, :type => :model do
  describe 'Associations' do
    it { should belong_to(:user) }
  end

  describe 'Validations' do
    let(:preference_range) { (Availability::LOW_PREFERENCE..Availability::HIGH_PREFERENCE) }

    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:preference_level) }
    it { should validate_inclusion_of(:preference_level).in_range(preference_range) }
    it { should validate_presence_of(:start_time) }
    it { should validate_presence_of(:end_time) }
  end
end
