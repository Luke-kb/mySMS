require 'rails_helper'

RSpec.describe Note, type: :model do
  subject { build(:note, notable_type: "Student") }

  context 'with valid attributes' do
    it { is_expected.to be_valid }
    it { is_expected.to have_db_column(:notable_id).of_type(:integer) }
    it { is_expected.to have_db_column(:notable_type).of_type(:string) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:content) }
    
    it "has a polymorphic relationship" do
      expect(subject).to belong_to(:notable)
    end
  
  end
end
