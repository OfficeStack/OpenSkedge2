  require 'rails_helper'

RSpec.describe Position, :type => :model do
  describe 'Associations' do
    it { should belong_to(:group) }
    it { should have_many(:shifts) }
    it { should have_many(:user_positions) }
    it { should have_many(:users).through(:user_positions) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should ensure_length_of(:name).is_at_most(75) }
    it { should ensure_length_of(:description).is_at_most(1000) }
    it { should validate_presence_of(:group) }
  end
end
