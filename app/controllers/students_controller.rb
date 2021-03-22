class StudentsController < ApplicationController
    decorates_assigned :student

    before_filter :load_student, except: [:index]

    def index
        @students = Student.paginate(page: params[:page], per_page: 10).decorate
    end

    def show
    end

    def edit        
    end

    def update
        if @student.update_attributes(params[:student])
            redirect_to @student, notice: 'Student was successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @student.destroy
        respond_to do |format|
            format.html { redirect_to students_path, notice: 'Listing was successfully destroyed.' }  
        end
    end
    
    private
    
    def load_student
        @student = Student.find(params[:id]).decorate
    end

end
