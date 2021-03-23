require 'rails_helper'

RSpec.describe Course, type: :model do
  
  subject { course }
  context 'with valid attributes' do
    let!(:course) { build(:course, name: "course1", description: "description", number_of_semesters: 1, start_date: "2021-01-20", end_date: "2020-05-20", allocation: 10) }
  
    it "is valid" do
      subject
      expect(course).to be_valid
    end
  end

  context "with invalid attributes" do
    let!(:course) { build(:course, name: nil) }
    
    it { is_expected.to validate_presence_of(:name) }

    it "is not valid" do
      course.valid?
      expect(course.errors[:name]).to include("can't be blank")
    end
  end
  
end
