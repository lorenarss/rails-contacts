require 'rails_helper'

RSpec.describe User, type: :model do
  #user = build(:user, name: 'maria', age: 20, bio: 'somthing aiaojdiajsda andkajkdnknda')

    it { should validate_presence_of(:name)}
    it { should validate_uniqueness_of(:name)}
    it { should validate_presence_of(:age)}
    #it { should validate_numericality_of(:age)}
    it { should validate_presence_of(:bio)}
    it { should have_many(:contacts)}
    it { should have_many(:phones).through(:contacts) }
end
