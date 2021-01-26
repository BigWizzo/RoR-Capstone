require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:email) }
  end

  describe 'associations' do
    it { should have_many(:subjects) }
    it { should have_many(:clockings) }
  end
end
