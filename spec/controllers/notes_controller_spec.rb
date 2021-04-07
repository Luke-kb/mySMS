require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  let!(:note) { create :note }
  let!(:student) { create :student }

  describe "POST #create" do
    
    subject { post :create, { student_id: student, notable_type: student, notable_id: note } }
    
    context 'with valid attributes' do
      it "creates a note" do
        expect { subject }.to change(Note, :count).by(1) 
      end
    end
  end
end
