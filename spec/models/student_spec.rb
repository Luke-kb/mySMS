require 'rails_helper'

RSpec.describe Student, type: :model do

  it "is valid with all attributes" do
    stu = create(:student)
    expect(stu).to be_valid
  end
  
  it "returns students full name as a string" do
    stu = create(:student)
    expect(stu.full_name).to eq("#{stu.title} #{stu.first_name} #{stu.middle_name} #{stu.last_name}")
  end

end
