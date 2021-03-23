require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
    let!(:course) { create(:course) }

    describe "GET #index" do
        subject { get :index }

        it { is_expected.to have_http_status(200) }
        it { is_expected.to render_template("courses/index") }

        it "returns list of courses" do
            subject
            expect(assigns(:courses)).to eq [course]
        end
    end

    describe "GET #show" do
        subject {  get :show, id: course }

        it { is_expected.to have_http_status(200) }
        it { is_expected.to render_template("courses/show") }
    
        it "assigns requested course to @course" do
            subject
            expect(assigns(:course)).to eq course
        end
    end

    describe "GET #edit" do
        subject { get :edit, id: course }

        it { is_expected.to have_http_status(200) }
        it { is_expected.to render_template("courses/edit") }

        it "assigns requested course to @course" do
            subject
            expect(assigns(:course)).to eq course
        end
    end

    describe "PUT #update" do
        context "with valid attributes" do
            subject { put :update, id: course, course: attributes_for(:course, name: "Course1") } 
            
            it "updates course attributes" do
                expect { subject }.to change { course.reload.name }.to("Course1")
            end
            
            it { is_expected.to redirect_to course }
        end
        
        context "with invalid attributes" do
            subject { put :update, id: course, course: attributes_for(:course, name: nil) }

            it { is_expected.to render_template("courses/edit") }
            
            it "does not update course attributes" do
                subject
                expect(course.reload.name).to_not be_nil
            end


        end
    end
end
