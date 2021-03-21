require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
    let!(:student) { create(:student) }
    
    describe "GET #index" do
        subject { get :index }

        it { is_expected.to have_http_status(200) }
        it { is_expected.to render_template("students/index") }
    
        it "returns list of students" do
            subject
            expect(assigns(:students)).to eq [student]
        end
    end
    
    describe "GET #show" do
        subject { get :show, id: student }

        it { is_expected.to have_http_status(200) }
        it { is_expected.to render_template("students/show") }
        
        it "assigns requested student to @student" do
            subject
            expect(assigns(:student)).to eq student
        end
    end
    
    describe "GET #edit" do
    subject { get :edit, id: student }

        it { is_expected.to have_http_status(200) }
        it { is_expected.to render_template("students/edit") }
        
        it "assigned requested student to @student" do
            subject
            expect(assigns(:student)).to eq student
        end
        
    end
    
    describe "PUT #update" do
        context "with valid attributes" do
            subject { put :update, id: student, student: attributes_for(:student, first_name: "Larry") }
            
            it "updates student attributes" do
                expect { subject }.to change { student.reload.first_name }.to("Larry")
            end
            
            it { is_expected.to redirect_to student }

        end
        
        context "with invalid attributes" do
            subject { put :update, id: student, student: attributes_for(:student, first_name: nil) }
            
            it "does not update student attributes" do
                subject
                expect(student.reload.first_name).to_not be_nil
            end
            
        end
    end

    describe 'DELETE #destroy' do
        subject { delete :destroy, id: student }

        it "deletes the student from the database" do  
            expect{ subject }.to change(Student, :count).by(-1)
        end

        it { is_expected.to redirect_to students_path }
    end

end
