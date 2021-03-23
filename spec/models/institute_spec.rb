require 'rails_helper'

RSpec.describe Institute, type: :model do
  
  subject { institute }
  context 'with valid attributes' do
    let!(:institute) { build(:institute, name: "institute1") }
    
    it "is valid" do
      subject
      expect(institute).to be_valid
    end
  end
end
