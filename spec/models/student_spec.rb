require 'rails_helper'

RSpec.describe Student, type: :model do
  
  subject { student }
  context 'with valid attributes' do
    let(:title) { build(:title, name: "Mr")}
    let(:student) { build(:student, title: title, first_name: "Harry", middle_name: "James", last_name: "Potter" ).decorate }
    
    it "is valid" do
      expect(student).to be_valid
    end
    
    it "returns full name as a string" do
      expect(subject.full_name).to eq("Mr Harry James Potter")
    end

    it { is_expected.to have_many(:notes) }
  end
end
