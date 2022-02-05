require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:age)}
    it { should validate_presence_of(:bio)}
    it { should have_many(:contacts)}
    it { should have_many(:phones).through(:contacts) }
  end
end