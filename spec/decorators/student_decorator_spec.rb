require 'rails_helper'

describe StudentDecorator do
  let(:title) { build(:title, name: "Mr")}
  subject { build(:student, title: title, first_name: "James", middle_name: "L", last_name: "Brooks").decorate } 
  
  it { is_expected.to have_attributes(full_name: "Mr James L Brooks") }
end
