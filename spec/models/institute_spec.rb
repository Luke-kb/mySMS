require 'rails_helper'

RSpec.describe Institute, type: :model do
  
  subject { build(:institute, name: name) }

  context 'with valid attributes' do
    let(:name) { "institute1" }
    
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to be_valid }
  end

  context "with invalid attributes" do
    let(:name) { nil }

    it { is_expected.to_not be_valid }
end
