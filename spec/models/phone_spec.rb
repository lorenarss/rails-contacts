require 'rails_helper'

RSpec.describe Phone, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:number)}
    it { should validate_presence_of(:type_of)}
    it { should validate_presence_of(:principal)}
  end
end