require 'rails_helper'

RSpec.describe Student, type: :model do
  
  context 'with valid attributes' do
    let(:student) { build(:student) }
    
    subject { student }
    it "is valid" do
      expect(student).to be_valid
    end
    
    subject { student }
    it "returns full name as a string" do
      expect(subject.full_name).to eq("#{subject.title} #{subject.first_name} #{subject.middle_name} #{subject.last_name}")
    end

  end
end
