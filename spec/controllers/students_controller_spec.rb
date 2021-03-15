require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
    #save instance of student in test db 
    let!(:student) { create(:student, title: "Mr", first_name: "Harry", middle_name: "James", last_name: "Potter", email: "harry@test.com", gender: "Male", birth_date: "1989-07-23") }
    
    describe "GET #index" do
        subject { get :index }

        it "has a 200 status code" do
            subject
            expect(subject.status).to eq(200)
        end
        
        it "renders the :index template" do
            subject
            expect(subject).to render_template("students/index")
        end
    
        it "returns list of students" do
            subject
            expect(assigns(:students)).to eq [student]
        end
    end
    
    describe "GET #show" do
        subject { get :show, id: student }

        it "has a 200 status code" do 
            subject
            expect(response.status).to eq(200)
        end
        
        it "renders the :show template" do
            subject
            expect(response).to render_template("students/show")
        end

        it "assigns requested student to @student" do
            subject
            expect(assigns(:student)).to eq student
        end
    end
    
    describe "GET #edit" do
        subject { get :edit, id: student }
        it "renders the :edit template" do
            subject
            expect(subject).to render_template("students/edit")
        end
        
        it "assigned requested student to @student" do
            subject
            expect(assigns(:student)).to eq student
        end
        
    end
    
    describe "PUT #update" do
        context "with valid attributes" do
            subject { put :update, id: student, student: attributes_for(:student, first_name: "Larry", last_name: "Potter", email: "harry@test.com", gender: "Male", birth_date: "1989-07-23") }
            
            it "updates student attributes" do
                expect{ subject }.to change { student.reload.first_name }.to("Larry")
            end
            
            it "redirects to the updated student" do
                expect(subject).to redirect_to student   
            end
        end
        
        context "with invalid attributes" do
            subject { put :update, id: student, student: attributes_for(:student, first_name: "Larry", last_name: "Potter", email: "harry@test.com", gender: "Male", birth_date: nil) }
            
            it "does not update student attributes" do
                subject
                expect(student.reload.birth_date).to_not be_nil
            end
            
        end
    end

    describe 'DELETE #destroy' do
        subject { delete :destroy, id: student }

        it "deletes the student from the database" do  
            expect{ subject }.to change(Student, :count).by(-1)
        end

        it "redirects to the :index view" do
            subject
            expect(subject).to redirect_to students_path
        end
    end

end
