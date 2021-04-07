require 'rails_helper'

RSpec.describe Students::NotesController, type: :controller do
  let!(:note) { create :note }
  let!(:student) { create :student }

  describe "GET #new" do
    subject { get :new, { student_id: student, notable_id: note } }
    
    it { is_expected.to have_http_status(200) }
    it { is_expected.to render_template("notes/new") }
  end
end
