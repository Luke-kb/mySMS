require 'rails_helper'

RSpec.describe Students::NotesController, type: :controller do
  let(:student) { create :student }
  let(:notable) { create :note, notable_type: "Student", notable_id: notable }
  let(:note_params) { { title: "note1", content: "note1 content"} }
  
  describe "GET #new" do
    subject { get :new, student_id: student }
    
    it { is_expected.to have_http_status(200) }
    it { is_expected.to render_template("notes/new") }
  
  end
  
  describe "POST #create" do    
    subject { post :create, note: note_params, student_id: student }
    
    context 'with valid attributes' do

      it "saves note in the database" do
        expect { subject }.to change { Note.count }.by(1) 
      end
    end
    
    context 'with invalid attributes' do
      subject { post :create, { student_id: student } }
      
      it "does not save note in the database" do
        expect { subject }.to_not change(Note, :count)
      end

      it { is_expected.to have_http_status(200) }

    end
  end
end
