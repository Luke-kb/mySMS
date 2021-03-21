require 'rails_helper'

RSpec.describe Course, type: :model do
  subject { course }
  context 'with valid attributes' do
    let(:course) { build(:course, name: "course1", description: "description", number_of_semesters: 1, start_date: "2021-01-20", end_date: "2020-05-20", allocation: 10) }
  
    it "is valid" do
      expect(subject).to be_valid
    end

  end

  context "with invalid attributes" do
    let(:course) { build(:course, name: nil) }

    it "is valid" do
      expect(subject).to be_valid
    end
  end
end
