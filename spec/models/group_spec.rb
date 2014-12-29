require 'rails_helper'

RSpec.describe Group, :type => :model do
  describe 'Associations' do
    it { should have_many(:positions) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should ensure_length_of(:name).is_at_most(75) }
    it { should ensure_length_of(:description).is_at_most(1000) }
  end
end
