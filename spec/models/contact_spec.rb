require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:birthday)}
    it { should belong_to(:user) }
    it { should have_many(:phones)}
  end
end