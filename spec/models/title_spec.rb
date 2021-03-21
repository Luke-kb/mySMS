require 'rails_helper'

RSpec.describe Title, type: :model do
  
  subject { title }
  context 'with valid attributes' do 
    let(:title) { build(:title, name: "Dr") }

    it { is_expected.to be_valid }

  end
end
