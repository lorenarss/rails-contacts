require 'rails_helper'

RSpec.describe Phone, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:number)}
    it { should validate_presence_of(:type_of)}
    it { should validate_presence_of(:principal)}
    it { should belong_to(:contact) }
    #it { should validate_uniqueness_of(:number).scoped_to(:contact_id).case_insensitive }
  end
end
