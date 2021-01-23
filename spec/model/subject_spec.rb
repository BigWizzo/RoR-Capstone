require 'rails_helper'

RSpec.describe Subject, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
    it { should validate_presence_of(:description) }
  end

  describe 'associations' do
    it { should belong_to(:student) }
    it { should have_many(:clockings) }
  end
end
