require 'rails_helper'

RSpec.describe Student, type: :model do
  
  subject { student }
  context 'with valid attributes' do
    let(:student) { build(:student, first_name: "Harry", middle_name: "James", last_name: "Potter" ) }
    
    it "is valid" do
      expect(student).to be_valid
    end
    
    it "returns full name as a string" do
      expect(subject.full_name).to eq("Mr. Harry James Potter")
    end

  end
end
