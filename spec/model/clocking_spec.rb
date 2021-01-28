require 'rails_helper'

RSpec.describe Clocking, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:topic) }
    it { should validate_presence_of(:details) }
    it { should validate_presence_of(:duration) }
  end

  describe 'associations' do
    it { should belong_to(:subject) }
  end
end
