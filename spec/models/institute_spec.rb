require 'rails_helper'

RSpec.describe Institute, type: :model do
  
  subject { institute }
  context 'with valid attributes' do
    let!(:institute) { build(:institute, name: "institute1") }
    
    it { is_expected.to validate_presence_of(:name) }

    it "is valid" do
      subject
      expect(institute).to be_valid
    end
  end

  context "with invalid attributes" do
      let!(:institute) { build(:institute, name: nil) }

      it "is not valid" do
        institute.valid?
        expect(institute.errors[:name]).to include("can't be blank")
      end
  end

end
